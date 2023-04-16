#include <string.h>
#include <unistd.h>
#include <iostream>
#include "Ast.h"
#include "LinearScan.h"
#include "MachineCode.h"
#include "Unit.h"
#include "dominatorTree.h"
#include "ComSubExprEli.h"
#include "GraphColor.h"
#include "mem2reg.h"
#include "PeepholeMInstrOpt.h"
#include "SSADestruction.h"

using namespace std;

Ast ast;
Unit unit;
MachineUnit mUnit;
extern FILE* yyin;
extern FILE* yyout;

int yyparse();

char outfile[256] = "a.out";
bool dump_tokens;
bool dump_ast;
bool dump_ir;
bool dump_asm;
bool optimize;

int main(int argc, char* argv[]) {
    int opt;
    while ((opt = getopt(argc, argv, "Siato:O::")) != -1) {
        switch (opt) {
            case 'o':
                strcpy(outfile, optarg);
                break;
            case 'a':
                dump_ast = true;
                break;
            case 't':
                dump_tokens = true;
                break;
            case 'i':
                dump_ir = true;
                break;
            case 'O':
                optimize=true;
                break;
            case 'S':
                dump_asm = true;
                break;
            default:
                // fprintf(stderr, "Usage: %s [-o outfile] infile\n", argv[0]);
                // exit(EXIT_FAILURE);
                dump_asm = true;
                break;
        }
    }
    if (optind >= argc) {
        fprintf(stderr, "no input file\n");
        exit(EXIT_FAILURE);
    }
    if (!(yyin = fopen(argv[optind], "r"))) {
        fprintf(stderr, "%s: No such file or directory\nno input file\n",
                argv[optind]);
        exit(EXIT_FAILURE);
    }
    if (!(yyout = fopen(outfile, "w"))) {
        fprintf(stderr, "%s: fail to open output file\n", outfile);
        exit(EXIT_FAILURE);
    }
    // cout<<"yyparse\n";
    yyparse();
    if (dump_ast)
        ast.output();
    ast.typeCheck();
    ast.genCode(&unit);
    // cout<<"genCode\n";
    if(optimize){
        ComSubExprEli em(&unit);
        em.execute();

        Mem2Reg mr(&unit);
        mr.execute();
        // //! 换方法!!!
        SSADestruction ssa(&unit);
        ssa.pass();
    }

    if (dump_ir)
        unit.output();
    // cout<<"genMachineCode\n";
    unit.genMachineCode(&mUnit);

    // LinearScan linearScan(&mUnit);
    // linearScan.allocateRegisters();

    GraphColor GraphColor(&mUnit);
    GraphColor.allocateRegisters();

    if(optimize){
        PeepholeMInstrOpt pmo(&mUnit);
        pmo.pass();
        
    }
    
    if (dump_asm)
        mUnit.output();
    return 0;
}
