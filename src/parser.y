%code top{
    #include <iostream>
    #include <assert.h>
    #include "parser.h"
    #include <cstring>
    #include <stack>
    extern Ast ast;

    Type* declType; // store type for variable declarations.
    Type* funcRetType; // store type for return value of funtion declarations.
    int yylex();
    int yyerror(char const*);
    ArrayType* arrayType;
    int idx;
    double* arrayValue; // store all number in float
    std::stack<InitValueListExpr*> stk;
    std::stack<StmtNode*> whileStk;
    InitValueListExpr* top;
    int leftCnt = 0;
    int whileCnt = 0;
    int stackParamNo = 0;
    int paramNo = 0;
    int fpParamNo = 0;
    int notZeroNum = 0;
    extern int yylineno;
    extern char* yytext;
    #include <iostream>
}

%code requires {
    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"
}

%union {
    double numtype;
    char* strtype;
    StmtNode* stmttype;
    ExprNode* exprtype;
    Type* type;
    SymbolEntry* se;
}

%start Program
%token <strtype> ID STRING
%token <numtype> INTEGER FLOATING
%token IF ELSE WHILE
%token INT VOID FLOAT
%token LPAREN RPAREN LBRACE RBRACE SEMICOLON LBRACKET RBRACKET COMMA  
%token ADD SUB MUL DIV MOD OR AND LESS LESSEQUAL GREATER GREATEREQUAL ASSIGN EQUAL NOTEQUAL NOT
%token CONST
%token RETURN CONTINUE BREAK

%type<stmttype> Stmts Stmt AssignStmt ExprStmt BlockStmt IfStmt WhileStmt BreakStmt ContinueStmt ReturnStmt DeclStmt FuncDef ConstDeclStmt VarDeclStmt ConstDefList VarDef ConstDef VarDefList FuncFParam FuncFParams MaybeFuncFParams BlankStmt
%type<exprtype> Exp AddExp Cond LOrExp PrimaryExp LVal RelExp LAndExp MulExp ConstExp EqExp UnaryExp InitVal ConstInitVal InitValList ConstInitValList FuncArrayIndices FuncRParams ArrayIndices
%type<type> Type

%precedence THEN
%precedence ELSE
%%
Program
    : Stmts {
        ast.setRoot($1);
    }
    ;
Stmts
    : Stmt {$$=$1;}
    | Stmts Stmt{
        $$ = new SeqNode($1, $2);
    }
    ;
Stmt
    : AssignStmt {
        $$=$1;
    }
    | ExprStmt {$$ = $1;}
    | BlockStmt {$$=$1;}
    | BlankStmt {$$ = $1;}
    | IfStmt {$$ = $1;}
    | WhileStmt {$$ = $1;}
    | BreakStmt {
        if(!whileCnt)
            fprintf(stderr, "\'break\' statement not in while statement\n");
        $$=$1;
    }
    | ContinueStmt {
        if(!whileCnt)
            fprintf(stderr, "\'continue\' statement not in while statement\n");
        $$=$1;
    }
    | ReturnStmt {$$ = $1;}
    | DeclStmt {$$ = $1;}
    | FuncDef {$$ = $1;}
    ;
LVal
    : ID {
        SymbolEntry* se;
        se = identifiers->lookup($1);
        if(se == nullptr)
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
        $$ = new Id(se);
        delete []$1;
    }
    | ID ArrayIndices{
        SymbolEntry* se;
        se = identifiers->lookup($1);
        if(se == nullptr)
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
        $$ = new Id(se, $2);
        delete []$1;
    }
    ; 
AssignStmt
    : LVal ASSIGN Exp SEMICOLON {
        $$ = new AssignStmt($1, $3);
    }
    ;
ExprStmt
    : Exp SEMICOLON {
        $$ = new ExprStmt($1);
    }
    ;
BlankStmt
    : SEMICOLON {
        $$ = new BlankStmt();
    }
    ;
BlockStmt
    : LBRACE {
        identifiers = new SymbolTable(identifiers);
    } 
      Stmts RBRACE {
        // midrule actions https://www.gnu.org/software/bison/manual/html_node/Using-Midrule-Actions.html
        $$ = new CompoundStmt($3);

        SymbolTable* top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
    }
    | LBRACE RBRACE {
        // 这里这个用加嘛 不确定
        $$ = new CompoundStmt();
    }
    ;
IfStmt
    : IF LPAREN Cond RPAREN Stmt %prec THEN {
        $$ = new IfStmt($3, $5);
    }
    | IF LPAREN Cond RPAREN Stmt ELSE Stmt {
        $$ = new IfElseStmt($3, $5, $7);
    }
    ;
WhileStmt
    : WHILE LPAREN Cond RPAREN {
        whileCnt++;
        WhileStmt *whileNode = new WhileStmt($3);
        $<stmttype>$ = whileNode;
        whileStk.push(whileNode);
    }
    Stmt {
        StmtNode *whileNode = $<stmttype>5; 
        ((WhileStmt*)whileNode)->setStmt($6);
        $$=whileNode;
        whileStk.pop();
        whileCnt--;
    }
    ;
BreakStmt
    : BREAK SEMICOLON {
        $$ = new BreakStmt(whileStk.top());
    }
    ;
ContinueStmt
    : CONTINUE SEMICOLON {
        $$ = new ContinueStmt(whileStk.top());
    }
    ;
ReturnStmt
    : RETURN SEMICOLON {
        $$ = new ReturnStmt();
    }
    | RETURN Exp SEMICOLON {
        if (($2->getType()->isFloat() && funcRetType->isInt()) ||
            ($2->getType()->isInt() && funcRetType->isFloat())) {
            $$ = new ReturnStmt(new ImplicitCastExpr($2, funcRetType));
        } else {
            $$ = new ReturnStmt($2);            
        }
    }
    ;
Exp
    :
    AddExp {$$ = $1;}
    ;
Cond
    :
    LOrExp {$$ = $1;}
    ;
PrimaryExp
    : LPAREN Exp RPAREN {
        $$ = $2;
    }
    | LVal {
        IdentifierSymbolEntry *id = dynamic_cast<IdentifierSymbolEntry*>($1->getSymbolEntry());
        if(id->getConst()){
            SymbolEntry *cs;
            if(id->getType()->isInt()||id->getType()->isFloat()){
                cs = new ConstantSymbolEntry(id->getType(), id->getValue());
                $$ = new Constant(cs);
            }
            else{
                $$ = $1;
            }
        }else{
            $$ = $1;
        }
    }
    | STRING {
        SymbolEntry* se;
        se = globals->lookup(std::string($1));
        // 这里如果str内容和变量名相同 怎么处理
        if(se == nullptr){
            Type* type = new StringType(strlen($1));
            se = new ConstantSymbolEntry(type, std::string($1));
            globals->install(std::string($1), se);
        }
        ExprNode* expr = new ExprNode(se);

        $$ = expr;
    }
    | INTEGER {
        SymbolEntry* se = new ConstantSymbolEntry(TypeSystem::intType, $1);
        $$ = new Constant(se);
    }
    | FLOATING {
        SymbolEntry* se = new ConstantSymbolEntry(TypeSystem::floatType, $1);
        $$ = new Constant(se);
    }
    ;
UnaryExp 
    : PrimaryExp {$$ = $1;}
    | ID LPAREN FuncRParams RPAREN {
        SymbolEntry* se;
        se = identifiers->lookup($1);
        if(se == nullptr)
            fprintf(stderr, "function \"%s\" is undefined\n", (char*)$1);
        $$ = new CallExpr(se, $3);
    }
    | ID LPAREN RPAREN {
        SymbolEntry* se;
        se = identifiers->lookup($1);
        if(se == nullptr)
            fprintf(stderr, "function \"%s\" is undefined\n", (char*)$1);
            if (strcmp($1, "_sysy_starttime") == 0 || strcmp($1, "_sysy_stoptime") == 0) {
            ExprNode* param = new Constant(new ConstantSymbolEntry(TypeSystem::intType, yylineno));
            $$ = new CallExpr(se, param);
        } else
        $$ = new CallExpr(se);
    }
    | ADD UnaryExp {
        $$ = $2;
    }
    | SUB UnaryExp {
        Type* exprType = $2->getType();
        if($2->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *se = dynamic_cast<ConstantSymbolEntry*>($2->getSymbolEntry());
            ConstantSymbolEntry *cs = new ConstantSymbolEntry(exprType,-se->getValue());
            $$ = new UnaryExpr(cs, UnaryExpr::SUB, $2);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(exprType, SymbolTable::getLabel());
            $$ = new UnaryExpr(se, UnaryExpr::SUB, $2);
        }
        // Type* exprType = $2->getType();
        // SymbolEntry* se = new TemporarySymbolEntry(exprType, SymbolTable::getLabel());
        // ExprNode* tmpExpr = new UnaryExpr(se, UnaryExpr::SUB, $2);
        // if (exprType->isFloat()) {
        //     $$ = tmpExpr;
        // } else {
        //     $$ = tmpExpr->const_fold();
        // }
    }
    | NOT UnaryExp {
        if($2->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *se = dynamic_cast<ConstantSymbolEntry*>($2->getSymbolEntry());
            ConstantSymbolEntry *cs = new ConstantSymbolEntry(TypeSystem::boolType,!se->getValue());
            $$ = new UnaryExpr(cs, UnaryExpr::NOT, $2);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new UnaryExpr(se, UnaryExpr::NOT, $2);
        }
    }
    ;
MulExp
    : UnaryExp {$$ = $1;}
    | MulExp MUL UnaryExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            if(ts1->getType()->isFloat() || ts2->getType()->isFloat()){
                cs = new ConstantSymbolEntry(TypeSystem::floatType,ts1->getValue()*ts2->getValue());
            }
            else{
                cs = new ConstantSymbolEntry(TypeSystem::intType,(int)ts1->getValue()*(int)ts2->getValue());
            }
            $$ = new BinaryExpr(cs, BinaryExpr::MUL, $1, $3);
        }else{
            SymbolEntry* se;
            if ($1->getType()->isFloat() || $3->getType()->isFloat()) {
                se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::MUL, $1, $3);
            } else {
                se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::MUL, $1, $3);
            }
        }
    }
    | MulExp DIV UnaryExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            if(ts1->getType()->isFloat() || ts2->getType()->isFloat()){
                cs = new ConstantSymbolEntry(TypeSystem::floatType,ts1->getValue()/ts2->getValue());
            }
            else{
                cs = new ConstantSymbolEntry(TypeSystem::intType,(int)ts1->getValue()/(int)ts2->getValue());
            }
            $$ = new BinaryExpr(cs, BinaryExpr::DIV, $1, $3);
        }else{
            SymbolEntry* se;
            if ($1->getType()->isFloat() || $3->getType()->isFloat()) {
                se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::DIV, $1, $3);
            } else {
                se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::DIV, $1, $3);
            }
        }
    }
    | MulExp MOD UnaryExp {
        if ($1->getType()->isFloat() || $3->getType()->isFloat()) {
            // error
            // already handled in `ast.cpp`
            fprintf(stderr, "Operands of `mod` must be both integers");
        }
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs =new ConstantSymbolEntry(TypeSystem::intType,(int)ts1->getValue() % (int)ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::MOD, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::MOD, $1, $3);
        }
    }
    ;
AddExp
    : MulExp {$$ = $1;}
    | AddExp ADD MulExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            if(ts1->getType()->isFloat() || ts2->getType()->isFloat()){
                cs = new ConstantSymbolEntry(TypeSystem::floatType,ts1->getValue() + ts2->getValue());
            }
            else{
                cs = new ConstantSymbolEntry(TypeSystem::intType,(int)ts1->getValue() + (int)ts2->getValue());
            }
            $$ = new BinaryExpr(cs, BinaryExpr::ADD, $1, $3);
        }else{
            SymbolEntry* se;
            if ($1->getType()->isFloat() || $3->getType()->isFloat()) {
                se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::ADD, $1, $3);
            } else {
                se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::ADD, $1, $3);
            }
        }
    }
    | AddExp SUB MulExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            if(ts1->getType()->isFloat() || ts2->getType()->isFloat()){
                cs = new ConstantSymbolEntry(TypeSystem::floatType,ts1->getValue() - ts2->getValue());
            }
            else{
                cs = new ConstantSymbolEntry(TypeSystem::intType,(int)ts1->getValue() - (int)ts2->getValue());
            }
            $$ = new BinaryExpr(cs, BinaryExpr::SUB, $1, $3);
        }else{
            SymbolEntry* se;
            if ($1->getType()->isFloat() || $3->getType()->isFloat()) {
                se = new TemporarySymbolEntry(TypeSystem::floatType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::SUB, $1, $3);
            } else {
                se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
                $$ = new BinaryExpr(se, BinaryExpr::SUB, $1, $3);
            }
        }
    }
    ;
RelExp
    : AddExp {
        $$ = $1;
    }
    | RelExp LESS AddExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() < ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::LESS, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::LESS, $1, $3);
        }
    }
    | RelExp LESSEQUAL AddExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() <= ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::LESSEQUAL, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::LESSEQUAL, $1, $3);
        }
    }
    | RelExp GREATER AddExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() > ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::GREATER, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::GREATER, $1, $3);
        }
    }
    | RelExp GREATEREQUAL AddExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() >= ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::GREATEREQUAL, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::GREATEREQUAL, $1, $3);
        }
    }
    ;
EqExp
    : RelExp {$$ = $1;}
    | EqExp EQUAL RelExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() == ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::EQUAL, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::EQUAL, $1, $3);
        }
    }
    | EqExp NOTEQUAL RelExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() != ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::NOTEQUAL, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::NOTEQUAL, $1, $3);
        }
    }
    ;
LAndExp
    : EqExp {$$ = $1;}
    | LAndExp AND EqExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() && ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::AND, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::AND, $1, $3);
        }
    }
    ;
LOrExp
    : LAndExp {$$ = $1;}
    | LOrExp OR LAndExp {
        if($1->getSymbolEntry()->isConstant()&&$3->getSymbolEntry()->isConstant()){
            ConstantSymbolEntry *ts1 = dynamic_cast<ConstantSymbolEntry*>($1->getSymbolEntry());
            ConstantSymbolEntry *ts2 = dynamic_cast<ConstantSymbolEntry*>($3->getSymbolEntry());
            ConstantSymbolEntry *cs;
            cs = new ConstantSymbolEntry(TypeSystem::boolType,ts1->getValue() || ts2->getValue());
            $$ = new BinaryExpr(cs, BinaryExpr::OR, $1, $3);
        }else{
            SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
            $$ = new BinaryExpr(se, BinaryExpr::OR, $1, $3);
        }
    }
    ;
ConstExp
    : AddExp {$$ = $1;}
    ;
FuncRParams 
    : Exp {$$ = $1;}
    | FuncRParams COMMA Exp {
        $$ = $1;
        $$->setNext($3);
    }
Type
    : INT {
        $$ = TypeSystem::intType;
        declType = TypeSystem::intType;
    }
    | VOID {
        $$ = TypeSystem::voidType;
    }
    | FLOAT {
        $$ = TypeSystem::floatType;
        declType = TypeSystem::floatType;
    }
    ;
DeclStmt
    : VarDeclStmt {$$ = $1;}
    | ConstDeclStmt {$$ = $1;}
    ;
VarDeclStmt
    : Type VarDefList SEMICOLON {$$ = $2;}
    ;
ConstDeclStmt
    : CONST Type ConstDefList SEMICOLON {
        // 这里肯定还得区分一下 
        $$ = $3;
    }
    ;
VarDefList
    : VarDefList COMMA VarDef {
        $$ = $1;
        $1->setNext($3);
    } 
    | VarDef {$$ = $1;}
    ;
ConstDefList
    : ConstDefList COMMA ConstDef {
        $$ = $1;
        $1->setNext($3);
    }
    | ConstDef {$$ = $1;}
    ;
VarDef
    : ID {
        SymbolEntry* se;
        se = new IdentifierSymbolEntry(declType, $1, identifiers->getLevel());
        if(!identifiers->install($1, se))
            fprintf(stderr, "identifier \"%s\" is already defined\n", (char*)$1);
        $$ = new DeclStmt(new Id(se));
        delete []$1;
    }
    | ID ArrayIndices {
        SymbolEntry* se;
        std::vector<int> vec;
        ExprNode* temp = $2;
        while(temp){
            vec.push_back(temp->getValue());
            temp = (ExprNode*)(temp->getNext());
        }
        Type *type = declType;
        Type* temp1;
        while(!vec.empty()){
            temp1 = new ArrayType(type, vec.back());
            if(type->isArray())
                ((ArrayType*)type)->setArrayType(temp1);
            type = temp1;
            vec.pop_back();
        }
        arrayType = (ArrayType*)type;
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        ((IdentifierSymbolEntry*)se)->setAllZero();
        // double *p = new double[type->getSize()];
        // ((IdentifierSymbolEntry*)se)->setArrayValue(p);
        if(!identifiers->install($1, se))
            fprintf(stderr, "identifier \"%s\" is already defined\n", (char*)$1);
        $$ = new DeclStmt(new Id(se));
        delete []$1;
    }
    | ID ASSIGN InitVal {
        SymbolEntry* se;
        se = new IdentifierSymbolEntry(declType, $1, identifiers->getLevel());
        if(!identifiers->install($1, se))
            fprintf(stderr, "identifier \"%s\" is already defined\n", (char*)$1);
        // 这里要不要存值不确定
        double val = $3->getValue();
        if (declType->isInt() && $3->getType()->isFloat()) {
            float temp = (float)val;
            int temp1 = (int)temp;
            val = (double)temp1;
        }
        ((IdentifierSymbolEntry*)se)->setValue(val);
        $$ = new DeclStmt(new Id(se), $3);
        delete []$1;
    }
    | ID ArrayIndices ASSIGN {
        SymbolEntry* se;
        std::vector<int> vec;
        ExprNode* temp = $2;
        while(temp){
            vec.push_back(temp->getValue());
            temp = (ExprNode*)(temp->getNext());
        }
        Type* type = declType;
        Type* temp1;
        for(auto it = vec.rbegin(); it != vec.rend(); it++) {
            temp1 = new ArrayType(type, *it);
            if(type->isArray())
                ((ArrayType*)type)->setArrayType(temp1);
            type = temp1;
        }
        arrayType = (ArrayType*)type;
        idx = 0;
        std::stack<InitValueListExpr*>().swap(stk);
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        $<se>$ = se;
        arrayValue = new double[arrayType->getSize()];
        notZeroNum = 0;
    }
      InitVal {
        ((IdentifierSymbolEntry*)$<se>4)->setArrayValue(arrayValue);
        ((IdentifierSymbolEntry*)$<se>4)->setNotZeroNum(notZeroNum);
        if ((notZeroNum == 0) || ((InitValueListExpr*)$5)->isEmpty()){
            ((IdentifierSymbolEntry*)$<se>4)->setAllZero();
            ((InitValueListExpr*)$5)->setAllZero();
        }
        if (!identifiers->install($1, $<se>4))
            fprintf(stderr, "identifier \"%s\" is already defined\n", (char*)$1);
        $$ = new DeclStmt(new Id($<se>4), $5);
        delete []$1;
    }
    ;
ConstDef
    : ID ASSIGN ConstInitVal {
        if (declType->isFloat()) {
            declType = TypeSystem::constFloatType;
        } else if (declType->isInt()) {
            declType = TypeSystem::constIntType;
        } else {
            // error
        }
        SymbolEntry* se;
        se = new IdentifierSymbolEntry(declType, $1, identifiers->getLevel());
        ((IdentifierSymbolEntry*)se)->setConst();
        if(!identifiers->install($1, se))
            fprintf(stderr, "identifier \"%s\" is already defined\n", (char*)$1);
        identifiers->install($1, se);
        double val = $3->getValue();
        if (declType->isInt() && $3->getType()->isFloat()) {
            float temp = (float)val;
            int temp1 = (int)temp;
            val = (double)temp1;
        }
        ((IdentifierSymbolEntry*)se)->setValue(val);
        $$ = new DeclStmt(new Id(se), $3);
        delete []$1;
    }
    | ID ArrayIndices ASSIGN  {
        if (declType->isFloat()) {
            declType = TypeSystem::constFloatType;
        } else if (declType->isInt()) {
            declType = TypeSystem::constIntType;
        } else {
            // error
        }
        SymbolEntry* se;
        std::vector<int> vec;
        ExprNode* temp = $2;
        while(temp){
            vec.push_back(temp->getValue());
            temp = (ExprNode*)(temp->getNext());
        }
        Type* type = declType;
        Type* temp1;
        for(auto it = vec.rbegin(); it != vec.rend(); it++) {
            temp1 = new ArrayType(type, *it, true);
            if(type->isArray())
                ((ArrayType*)type)->setArrayType(temp1);
            type = temp1;
        }
        arrayType = (ArrayType*)type;
        idx = 0;
        std::stack<InitValueListExpr*>().swap(stk);
        se = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        ((IdentifierSymbolEntry*)se)->setConst();
        $<se>$ = se;
        arrayValue = new double[arrayType->getSize()];
        notZeroNum = 0;
    }
      ConstInitVal {
        ((IdentifierSymbolEntry*)$<se>4)->setArrayValue(arrayValue);
        ((IdentifierSymbolEntry*)$<se>4)->setNotZeroNum(notZeroNum);
        if ((notZeroNum == 0) || ((InitValueListExpr*)$5)->isEmpty()){
            ((IdentifierSymbolEntry*)$<se>4)->setAllZero();
            ((InitValueListExpr*)$5)->setAllZero();
        }
        if (!identifiers->install($1, $<se>4))
            fprintf(stderr, "identifier \"%s\" is already defined\n", (char*)$1);
        identifiers->install($1, $<se>4);
        $$ = new DeclStmt(new Id($<se>4), $5);
        delete []$1;
    } 
    ;
ArrayIndices
    : LBRACKET ConstExp RBRACKET {
        $$ = $2;
    }
    | ArrayIndices LBRACKET ConstExp RBRACKET {
        $$ = $1;
        $1->setNext($3);
    }
    ;
InitVal 
    : Exp {
        if (!$1->getType()->isInt() && !$1->getType()->isFloat()) {
            // error
            fprintf(stderr, "rval is invalid.\n");
        }
        $$ = $1;
        if (!stk.empty()) {
            
            double val = $1->getValue();
            if (val)
                notZeroNum++;
            if (declType->isInt() && $1->getType()->isFloat()) {
                float temp = (float)val;
                int temp1 = (int)temp;
                arrayValue[idx++] = (double)temp1;
            } else {
                arrayValue[idx++] = val;
            }

            Type* arrTy = stk.top()->getSymbolEntry()->getType();
            if (arrTy == TypeSystem::intType || arrTy == TypeSystem::floatType) {
                if ((arrTy->isInt() && $1->getType()->isFloat()) ||
                    (arrTy->isFloat() && $1->getType()->isInt())) {
                    ImplicitCastExpr* temp = new ImplicitCastExpr($1, declType);
                    stk.top()->addExpr(temp);
                } else {
                    stk.top()->addExpr($1);
                }
            } else {
                while (arrTy) {
                    if (((ArrayType*)arrTy)->getElementType() != TypeSystem::intType &&
                        ((ArrayType*)arrTy)->getElementType() != TypeSystem::floatType) {
                        arrTy = ((ArrayType*)arrTy)->getElementType();
                        SymbolEntry* se = new ConstantSymbolEntry(arrTy);
                        InitValueListExpr* list = new InitValueListExpr(se);
                        stk.top()->addExpr(list);
                        stk.push(list);
                    } else {
                        Type* elemType = ((ArrayType*)arrTy)->getElementType();
                        if ((elemType->isInt() && $1->getType()->isFloat()) ||
                            (elemType->isFloat() && $1->getType()->isInt())) {
                            ImplicitCastExpr* temp = new ImplicitCastExpr($1, elemType);
                            stk.top()->addExpr(temp);
                        } else {
                            stk.top()->addExpr($1);
                        }
                        while (stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt) {
                            arrTy = ((ArrayType*)arrTy)->getArrayType();
                            stk.pop();
                        }
                        break;
                    }
                }
            }
        }         
    }
    | LBRACE RBRACE {
        SymbolEntry* se;
        ExprNode* list;
        if(stk.empty()){
            // 如果只用一个{}初始化数组，那么栈一定为空
            // 此时也没必要再加入栈了
            memset(arrayValue, 0, arrayType->getSize());
            idx += arrayType->getSize() / declType->getSize();
            se = new ConstantSymbolEntry(arrayType);
            list = new InitValueListExpr(se);
        }else{
            // 栈不空说明肯定不是只有{}
            // 此时需要确定{}到底占了几个元素
            Type* type = ((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType();
            int len = type->getSize() / declType->getSize();
            memset(arrayValue + idx, 0, type->getSize());
            idx += len;
            se = new ConstantSymbolEntry(type);
            list = new InitValueListExpr(se);
            stk.top()->addExpr(list);
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
        }
        $$ = list;
    }
    | LBRACE {
        SymbolEntry* se;
        if(!stk.empty())
            arrayType = (ArrayType*)(((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType());
        se = new ConstantSymbolEntry(arrayType);
        if (arrayType->getElementType() != TypeSystem::intType &&
            arrayType->getElementType() != TypeSystem::floatType) {
            arrayType = (ArrayType*)(arrayType->getElementType());
        }
        InitValueListExpr* expr = new InitValueListExpr(se);
        if(!stk.empty())
            stk.top()->addExpr(expr);
        stk.push(expr);
        $<exprtype>$ = expr;
        leftCnt++;
    } 
      InitValList RBRACE {
        leftCnt--;
        while (stk.top() != $<exprtype>2 && stk.size() > (long unsigned int)(leftCnt + 1))
            stk.pop();
        if (stk.top() == $<exprtype>2)
            stk.pop();
        $$ = $<exprtype>2;
        if (!stk.empty())
            while (stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt) {
                stk.pop();
            }
        int size = ((ArrayType*)($$->getSymbolEntry()->getType()))->getSize() / declType->getSize();
        while (idx % size != 0)
            arrayValue[idx++] = 0;
        if (!stk.empty())
            arrayType = (ArrayType*)(
                ((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType());
    }
    ;

ConstInitVal
    : ConstExp {
        $$ = $1;
        if(!stk.empty()){
            double val = $1->getValue();
            if (val)
                notZeroNum++;
            if (declType->isInt() && $1->getType()->isFloat()) {
                float temp = (float)val;
                int temp1 = (int)temp;
                arrayValue[idx++] = (double)temp1;
            } else {
                arrayValue[idx++] = val;
            }

            Type* arrTy = stk.top()->getSymbolEntry()->getType();
            if (arrTy == TypeSystem::constIntType || arrTy == TypeSystem::constFloatType) {
                if ((arrTy->isFloat() && $1->getType()->isInt()) || 
                    (arrTy->isInt() && $1->getType()->isFloat())) {

                    ImplicitCastExpr* temp = new ImplicitCastExpr($1, arrTy); 
                    // arrTy is const here
                    stk.top()->addExpr(temp);

                } else {
                    stk.top()->addExpr($1);
                }
            } else {
                while (arrTy) {
                    if (((ArrayType*)arrTy)->getElementType() != TypeSystem::constIntType &&
                        ((ArrayType*)arrTy)->getElementType() != TypeSystem::constFloatType) {
                        arrTy = ((ArrayType*)arrTy)->getElementType();
                        SymbolEntry* se = new ConstantSymbolEntry(arrTy);
                        InitValueListExpr* list = new InitValueListExpr(se);
                        stk.top()->addExpr(list);
                        stk.push(list);
                    } else {
                        Type* elemType = ((ArrayType*)arrTy)->getElementType();
                        if ((elemType->isFloat() && $1->getType()->isInt()) || 
                            (elemType->isInt() && $1->getType()->isFloat())) {

                            ImplicitCastExpr* temp = new ImplicitCastExpr($1, elemType); 
                            // `elemType` is const here
                            stk.top()->addExpr(temp);

                        } else {
                            stk.top()->addExpr($1);
                        }

                        while (stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt) {
                            arrTy = ((ArrayType*)arrTy)->getArrayType();
                            stk.pop();
                        }
                        break;
                    }
                }
            }
        }
    }
    | LBRACE RBRACE {
        SymbolEntry* se;
        ExprNode* list;
        if(stk.empty()){
            // 如果只用一个{}初始化数组，那么栈一定为空
            // 此时也没必要再加入栈了
            memset(arrayValue, 0, arrayType->getSize());
            idx += arrayType->getSize() / declType->getSize();
            se = new ConstantSymbolEntry(arrayType);
            list = new InitValueListExpr(se);
        }else{
            // 栈不空说明肯定不是只有{}
            // 此时需要确定{}到底占了几个元素
            Type* type = ((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType();
            int len = type->getSize() / declType->getSize();
            memset(arrayValue + idx, 0, type->getSize());
            idx += len;
            se = new ConstantSymbolEntry(type);
            list = new InitValueListExpr(se);
            stk.top()->addExpr(list);
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
        }
        $$ = list;
    }
    | LBRACE {
        SymbolEntry* se;
        if(!stk.empty())
            arrayType = (ArrayType*)(((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType());
        se = new ConstantSymbolEntry(arrayType);
        if (arrayType->getElementType() != TypeSystem::intType &&
            arrayType->getElementType() != TypeSystem::floatType) {
            arrayType = (ArrayType*)(arrayType->getElementType());
        }
        InitValueListExpr* expr = new InitValueListExpr(se);
        if(!stk.empty())
            stk.top()->addExpr(expr);
        stk.push(expr);
        $<exprtype>$ = expr;
        leftCnt++;
    } 
      ConstInitValList RBRACE {
        leftCnt--;
        while(stk.top() != $<exprtype>2 && stk.size() > (long unsigned int)(leftCnt + 1))
            stk.pop();
        if(stk.top() == $<exprtype>2)
            stk.pop();
        $$ = $<exprtype>2;
        if(!stk.empty())
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
        while(idx % (((ArrayType*)($$->getSymbolEntry()->getType()))->getSize()/ sizeof(int)) !=0 )
            arrayValue[idx++] = 0;
        if(!stk.empty())
            arrayType = (ArrayType*)(((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType());
    }
    ;
InitValList
    : InitVal {
        $$ = $1;
    }
    | InitValList COMMA InitVal {
        $$ = $1;
    }
    ;
ConstInitValList
    : ConstInitVal {
        $$ = $1;
    }
    | ConstInitValList COMMA ConstInitVal {
        $$ = $1;
    }
    ;
FuncDef
    :
    Type ID {
        // SymbolTable::resetLabel();
        identifiers = new SymbolTable(identifiers);
        paramNo = 0;
        fpParamNo = 0;
        stackParamNo = 0;
        funcRetType = $1;
    }
    LPAREN MaybeFuncFParams RPAREN {
        Type* funcType;
        std::vector<Type*> vec;
        std::vector<SymbolEntry*> vec1;
        DeclStmt* temp = (DeclStmt*)$5;
        while (temp) {
            vec.push_back(temp->getId()->getSymbolEntry()->getType());
            vec1.push_back(temp->getId()->getSymbolEntry());
            temp = (DeclStmt*)(temp->getNext());
        }
        funcType = new FunctionType($1, vec, vec1);
        SymbolEntry* se = new IdentifierSymbolEntry(
            funcType, $2, identifiers->getPrev()->getLevel());
        ((IdentifierSymbolEntry*)se)->setIntParamNo(paramNo);
        ((IdentifierSymbolEntry*)se)->setFloatParamNo(fpParamNo);
        if (!identifiers->getPrev()->install($2, se)) {
            fprintf(stderr, "redefinition of \'%s %s\'\n", $2, se->getType()->toStr().c_str());
        }
        $<se>$ = se; 
    } 
    BlockStmt {
        $$ = new FunctionDef($<se>7, (DeclStmt*)$5, $8);
        SymbolTable* top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete []$2;
    }
    ;
MaybeFuncFParams
    : FuncFParams {$$ = $1;}
    | %empty {$$ = nullptr;}
FuncFParams
    : FuncFParams COMMA FuncFParam {
        $$ = $1;
        $$->setNext($3);
    }
    | FuncFParam {
        $$ = $1;
    }
    ;
FuncFParam
    : Type ID {
        SymbolEntry* se;
        if ($1->isFloat()) {
            se = new IdentifierSymbolEntry($1, $2, identifiers->getLevel(), fpParamNo++);
            ((IdentifierSymbolEntry*)se)->setAllParamNo(fpParamNo + paramNo - 1);
            if (fpParamNo > 4){
                ((IdentifierSymbolEntry*)se)->setStackParamNo(stackParamNo);
                stackParamNo++;
            }
        } else {
            se = new IdentifierSymbolEntry($1, $2, identifiers->getLevel(), paramNo++);
            ((IdentifierSymbolEntry*)se)->setAllParamNo(fpParamNo + paramNo - 1);
            if (paramNo > 4){
                ((IdentifierSymbolEntry*)se)->setStackParamNo(stackParamNo);
                stackParamNo++;
            }
        }
        identifiers->install($2, se);
        ((IdentifierSymbolEntry*)se)->setLabel();
        ((IdentifierSymbolEntry*)se)->setAddr(new Operand(se));
        $$ = new DeclStmt(new Id(se));
        delete []$2;
    }
    | Type ID FuncArrayIndices {
        // 这里也需要求值
        SymbolEntry* se;
        ExprNode* temp = $3;
        Type* arr = $1;
        Type* arr1;
        std::stack<ExprNode*> stk;
        while (temp) {
            stk.push(temp);
            temp = (ExprNode*)(temp->getNext());
        }
        while (!stk.empty()) {
            arr1 = new ArrayType(arr, stk.top()->getValue());
            if (arr->isArray())
                ((ArrayType*)arr)->setArrayType(arr1);
            arr = arr1;
            stk.pop();
        }
        se = new IdentifierSymbolEntry(arr, $2, identifiers->getLevel(), paramNo++);
        ((IdentifierSymbolEntry*)se)->setAllParamNo(fpParamNo + paramNo - 1);
        if (paramNo > 4){
            ((IdentifierSymbolEntry*)se)->setStackParamNo(stackParamNo);
            stackParamNo++;
        }
        identifiers->install($2, se);
        ((IdentifierSymbolEntry*)se)->setLabel();
        ((IdentifierSymbolEntry*)se)->setAddr(new Operand(se));
        $$ = new DeclStmt(new Id(se));
        delete []$2;
    }
    ;
FuncArrayIndices 
    : LBRACKET RBRACKET {
        $$ = new ExprNode(nullptr);
    }
    | FuncArrayIndices LBRACKET Exp RBRACKET {
        $$ = $1;
        $$->setNext($3);
    }
%%

int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
