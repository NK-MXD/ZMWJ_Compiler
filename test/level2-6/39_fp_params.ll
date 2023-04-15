@k = global i32 0, align 4
define float @params_f40(float %t1, float %t3, float %t5, float %t7, float %t9, float %t11, float %t13, float %t15, float %t17, float %t19, float %t21, float %t23, float %t25, float %t27, float %t29, float %t31, float %t33, float %t35, float %t37, float %t39, float %t41, float %t43, float %t45, float %t47, float %t49, float %t51, float %t53, float %t55, float %t57, float %t59, float %t61, float %t63, float %t65, float %t67, float %t69, float %t71, float %t73, float %t75, float %t77, float %t79) {
B1516:
  %t1517 = alloca float, align 4
  %t1518 = alloca float, align 4
  %t1519 = alloca float, align 4
  %t1520 = alloca float, align 4
  %t1521 = alloca float, align 4
  %t1522 = alloca float, align 4
  %t1523 = alloca float, align 4
  %t1524 = alloca float, align 4
  %t1525 = alloca float, align 4
  %t1526 = alloca float, align 4
  %t1527 = alloca float, align 4
  %t1528 = alloca float, align 4
  %t1529 = alloca float, align 4
  %t1530 = alloca float, align 4
  %t1531 = alloca float, align 4
  %t1532 = alloca float, align 4
  %t1533 = alloca float, align 4
  %t1534 = alloca float, align 4
  %t1535 = alloca float, align 4
  %t1536 = alloca float, align 4
  %t1537 = alloca float, align 4
  %t1538 = alloca float, align 4
  %t1539 = alloca float, align 4
  %t1540 = alloca float, align 4
  %t1541 = alloca float, align 4
  %t1542 = alloca float, align 4
  %t1543 = alloca float, align 4
  %t1544 = alloca float, align 4
  %t1545 = alloca float, align 4
  %t1546 = alloca float, align 4
  %t1547 = alloca float, align 4
  %t1548 = alloca float, align 4
  %t1549 = alloca float, align 4
  %t1550 = alloca float, align 4
  %t1551 = alloca float, align 4
  %t1552 = alloca float, align 4
  %t1553 = alloca float, align 4
  %t1554 = alloca float, align 4
  %t1555 = alloca float, align 4
  %t1556 = alloca float, align 4
  %t1563 = alloca [10 x float], align 4
  store float %t1, float* %t1517, align 4
  store float %t3, float* %t1518, align 4
  store float %t5, float* %t1519, align 4
  store float %t7, float* %t1520, align 4
  store float %t9, float* %t1521, align 4
  store float %t11, float* %t1522, align 4
  store float %t13, float* %t1523, align 4
  store float %t15, float* %t1524, align 4
  store float %t17, float* %t1525, align 4
  store float %t19, float* %t1526, align 4
  store float %t21, float* %t1527, align 4
  store float %t23, float* %t1528, align 4
  store float %t25, float* %t1529, align 4
  store float %t27, float* %t1530, align 4
  store float %t29, float* %t1531, align 4
  store float %t31, float* %t1532, align 4
  store float %t33, float* %t1533, align 4
  store float %t35, float* %t1534, align 4
  store float %t37, float* %t1535, align 4
  store float %t39, float* %t1536, align 4
  store float %t41, float* %t1537, align 4
  store float %t43, float* %t1538, align 4
  store float %t45, float* %t1539, align 4
  store float %t47, float* %t1540, align 4
  store float %t49, float* %t1541, align 4
  store float %t51, float* %t1542, align 4
  store float %t53, float* %t1543, align 4
  store float %t55, float* %t1544, align 4
  store float %t57, float* %t1545, align 4
  store float %t59, float* %t1546, align 4
  store float %t61, float* %t1547, align 4
  store float %t63, float* %t1548, align 4
  store float %t65, float* %t1549, align 4
  store float %t67, float* %t1550, align 4
  store float %t69, float* %t1551, align 4
  store float %t71, float* %t1552, align 4
  store float %t73, float* %t1553, align 4
  store float %t75, float* %t1554, align 4
  store float %t77, float* %t1555, align 4
  store float %t79, float* %t1556, align 4
  %t81 = load float, float* %t1556, align 4
  %t83 = sitofp i32 0 to float
  %t82 = icmp ne float %t81, %t83
  br i1 %t82, label %B1557, label %B1562
B1557:                               	; preds = %B1516
  %t1564 = bitcast [10 x float]* %t1563 to i8*
  call void @llvm.memset.p0.i32(i8* %t1564, i8 0, i32 40, i1 0)
  %t84 = load float, float* %t1517, align 4
  %t85 = load float, float* %t1518, align 4
  %t86 = fadd float %t84, %t85
  %t87 = load float, float* %t1519, align 4
  %t88 = fadd float %t86, %t87
  %t89 = load float, float* %t1520, align 4
  %t90 = fadd float %t88, %t89
  %t1565 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 0
  store float %t90, float* %t1565, align 4
  %t91 = load float, float* %t1521, align 4
  %t92 = load float, float* %t1522, align 4
  %t93 = fadd float %t91, %t92
  %t94 = load float, float* %t1523, align 4
  %t95 = fadd float %t93, %t94
  %t96 = load float, float* %t1524, align 4
  %t97 = fadd float %t95, %t96
  %t1566 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 1
  store float %t97, float* %t1566, align 4
  %t98 = load float, float* %t1525, align 4
  %t99 = load float, float* %t1526, align 4
  %t100 = fadd float %t98, %t99
  %t101 = load float, float* %t1527, align 4
  %t102 = fadd float %t100, %t101
  %t103 = load float, float* %t1528, align 4
  %t104 = fadd float %t102, %t103
  %t1567 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 2
  store float %t104, float* %t1567, align 4
  %t105 = load float, float* %t1529, align 4
  %t106 = load float, float* %t1530, align 4
  %t107 = fadd float %t105, %t106
  %t108 = load float, float* %t1531, align 4
  %t109 = fadd float %t107, %t108
  %t110 = load float, float* %t1532, align 4
  %t111 = fadd float %t109, %t110
  %t1568 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 3
  store float %t111, float* %t1568, align 4
  %t112 = load float, float* %t1533, align 4
  %t113 = load float, float* %t1534, align 4
  %t114 = fadd float %t112, %t113
  %t115 = load float, float* %t1535, align 4
  %t116 = fadd float %t114, %t115
  %t117 = load float, float* %t1536, align 4
  %t118 = fadd float %t116, %t117
  %t1569 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 4
  store float %t118, float* %t1569, align 4
  %t119 = load float, float* %t1537, align 4
  %t120 = load float, float* %t1538, align 4
  %t121 = fadd float %t119, %t120
  %t122 = load float, float* %t1539, align 4
  %t123 = fadd float %t121, %t122
  %t124 = load float, float* %t1540, align 4
  %t125 = fadd float %t123, %t124
  %t1570 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 5
  store float %t125, float* %t1570, align 4
  %t126 = load float, float* %t1541, align 4
  %t127 = load float, float* %t1542, align 4
  %t128 = fadd float %t126, %t127
  %t129 = load float, float* %t1543, align 4
  %t130 = fadd float %t128, %t129
  %t131 = load float, float* %t1544, align 4
  %t132 = fadd float %t130, %t131
  %t1571 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 6
  store float %t132, float* %t1571, align 4
  %t133 = load float, float* %t1545, align 4
  %t134 = load float, float* %t1546, align 4
  %t135 = fadd float %t133, %t134
  %t136 = load float, float* %t1547, align 4
  %t137 = fadd float %t135, %t136
  %t138 = load float, float* %t1548, align 4
  %t139 = fadd float %t137, %t138
  %t1572 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 7
  store float %t139, float* %t1572, align 4
  %t140 = load float, float* %t1549, align 4
  %t141 = load float, float* %t1550, align 4
  %t142 = fadd float %t140, %t141
  %t143 = load float, float* %t1551, align 4
  %t144 = fadd float %t142, %t143
  %t145 = load float, float* %t1552, align 4
  %t146 = fadd float %t144, %t145
  %t1573 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 8
  store float %t146, float* %t1573, align 4
  %t147 = load float, float* %t1553, align 4
  %t148 = load float, float* %t1554, align 4
  %t149 = fadd float %t147, %t148
  %t150 = load float, float* %t1555, align 4
  %t151 = fadd float %t149, %t150
  %t152 = load float, float* %t1556, align 4
  %t153 = fadd float %t151, %t152
  %t1574 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 9
  store float %t153, float* %t1574, align 4
  %t155 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 0
  call void @putfarray(i32 10, float* %t155)
  %t156 = load i32, i32* @k, align 4
  %t157 = getelementptr inbounds [10 x float], [10 x float]* %t1563, i32 0, i32 %t156
  %t1575 = load float, float* %t157, align 4
  ret float %t1575
B1562:                               	; preds = %B1516
  br label %B1558
B1558:                               	; preds = %B1562
  %t158 = load float, float* %t1518, align 4
  %t159 = load float, float* %t1519, align 4
  %t160 = load float, float* %t1520, align 4
  %t161 = load float, float* %t1521, align 4
  %t162 = load float, float* %t1522, align 4
  %t163 = load float, float* %t1523, align 4
  %t164 = load float, float* %t1524, align 4
  %t165 = load float, float* %t1525, align 4
  %t166 = load float, float* %t1526, align 4
  %t167 = load float, float* %t1527, align 4
  %t168 = load float, float* %t1528, align 4
  %t169 = load float, float* %t1529, align 4
  %t170 = load float, float* %t1530, align 4
  %t171 = load float, float* %t1531, align 4
  %t172 = load float, float* %t1532, align 4
  %t173 = load float, float* %t1533, align 4
  %t174 = load float, float* %t1534, align 4
  %t175 = load float, float* %t1535, align 4
  %t176 = load float, float* %t1536, align 4
  %t177 = load float, float* %t1537, align 4
  %t178 = load float, float* %t1538, align 4
  %t179 = load float, float* %t1539, align 4
  %t180 = load float, float* %t1540, align 4
  %t181 = load float, float* %t1541, align 4
  %t182 = load float, float* %t1542, align 4
  %t183 = load float, float* %t1543, align 4
  %t184 = load float, float* %t1544, align 4
  %t185 = load float, float* %t1545, align 4
  %t186 = load float, float* %t1546, align 4
  %t187 = load float, float* %t1547, align 4
  %t188 = load float, float* %t1548, align 4
  %t189 = load float, float* %t1549, align 4
  %t190 = load float, float* %t1550, align 4
  %t191 = load float, float* %t1551, align 4
  %t192 = load float, float* %t1552, align 4
  %t193 = load float, float* %t1553, align 4
  %t194 = load float, float* %t1554, align 4
  %t195 = load float, float* %t1555, align 4
  %t196 = load float, float* %t1556, align 4
  %t197 = load float, float* %t1517, align 4
  %t198 = load float, float* %t1518, align 4
  %t199 = fadd float %t197, %t198
  %t200 = load float, float* %t1519, align 4
  %t201 = fadd float %t199, %t200
  %t202 = call float @params_f40(float %t158, float %t159, float %t160, float %t161, float %t162, float %t163, float %t164, float %t165, float %t166, float %t167, float %t168, float %t169, float %t170, float %t171, float %t172, float %t173, float %t174, float %t175, float %t176, float %t177, float %t178, float %t179, float %t180, float %t181, float %t182, float %t183, float %t184, float %t185, float %t186, float %t187, float %t188, float %t189, float %t190, float %t191, float %t192, float %t193, float %t194, float %t195, float %t196, float %t201)
  ret float %t202
}
define float @params_f40_i24(i32 %t203, i32 %t205, i32 %t207, float %t209, i32 %t211, i32 %t213, i32 %t215, float %t217, float %t219, float %t221, i32 %t223, float %t225, float %t227, i32 %t229, float %t231, i32 %t233, float %t235, float %t237, float %t239, float %t241, float %t243, float %t245, i32 %t247, float %t249, i32 %t251, i32 %t253, float %t255, float %t257, float %t259, float %t261, float %t263, i32 %t265, float %t267, i32 %t269, float %t271, float %t273, float %t275, float %t277, i32 %t279, i32 %t281, float %t283, float %t285, float %t287, i32 %t289, float %t291, i32 %t293, i32 %t295, float %t297, float %t299, float %t301, float %t303, i32 %t305, i32 %t307, i32 %t309, float %t311, float %t313, float %t315, float %t317, float %t319, float %t321, i32 %t323, float %t325, i32 %t327, float %t329) {
B1576:
  %t1577 = alloca i32, align 4
  %t1578 = alloca i32, align 4
  %t1579 = alloca i32, align 4
  %t1580 = alloca float, align 4
  %t1581 = alloca i32, align 4
  %t1582 = alloca i32, align 4
  %t1583 = alloca i32, align 4
  %t1584 = alloca float, align 4
  %t1585 = alloca float, align 4
  %t1586 = alloca float, align 4
  %t1587 = alloca i32, align 4
  %t1588 = alloca float, align 4
  %t1589 = alloca float, align 4
  %t1590 = alloca i32, align 4
  %t1591 = alloca float, align 4
  %t1592 = alloca i32, align 4
  %t1593 = alloca float, align 4
  %t1594 = alloca float, align 4
  %t1595 = alloca float, align 4
  %t1596 = alloca float, align 4
  %t1597 = alloca float, align 4
  %t1598 = alloca float, align 4
  %t1599 = alloca i32, align 4
  %t1600 = alloca float, align 4
  %t1601 = alloca i32, align 4
  %t1602 = alloca i32, align 4
  %t1603 = alloca float, align 4
  %t1604 = alloca float, align 4
  %t1605 = alloca float, align 4
  %t1606 = alloca float, align 4
  %t1607 = alloca float, align 4
  %t1608 = alloca i32, align 4
  %t1609 = alloca float, align 4
  %t1610 = alloca i32, align 4
  %t1611 = alloca float, align 4
  %t1612 = alloca float, align 4
  %t1613 = alloca float, align 4
  %t1614 = alloca float, align 4
  %t1615 = alloca i32, align 4
  %t1616 = alloca i32, align 4
  %t1617 = alloca float, align 4
  %t1618 = alloca float, align 4
  %t1619 = alloca float, align 4
  %t1620 = alloca i32, align 4
  %t1621 = alloca float, align 4
  %t1622 = alloca i32, align 4
  %t1623 = alloca i32, align 4
  %t1624 = alloca float, align 4
  %t1625 = alloca float, align 4
  %t1626 = alloca float, align 4
  %t1627 = alloca float, align 4
  %t1628 = alloca i32, align 4
  %t1629 = alloca i32, align 4
  %t1630 = alloca i32, align 4
  %t1631 = alloca float, align 4
  %t1632 = alloca float, align 4
  %t1633 = alloca float, align 4
  %t1634 = alloca float, align 4
  %t1635 = alloca float, align 4
  %t1636 = alloca float, align 4
  %t1637 = alloca i32, align 4
  %t1638 = alloca float, align 4
  %t1639 = alloca i32, align 4
  %t1640 = alloca float, align 4
  %t1647 = alloca [10 x float], align 4
  %t1659 = alloca [8 x i32], align 4
  %t1669 = alloca i32, align 4
  store i32 %t203, i32* %t1577, align 4
  store i32 %t205, i32* %t1578, align 4
  store i32 %t207, i32* %t1579, align 4
  store float %t209, float* %t1580, align 4
  store i32 %t211, i32* %t1581, align 4
  store i32 %t213, i32* %t1582, align 4
  store i32 %t215, i32* %t1583, align 4
  store float %t217, float* %t1584, align 4
  store float %t219, float* %t1585, align 4
  store float %t221, float* %t1586, align 4
  store i32 %t223, i32* %t1587, align 4
  store float %t225, float* %t1588, align 4
  store float %t227, float* %t1589, align 4
  store i32 %t229, i32* %t1590, align 4
  store float %t231, float* %t1591, align 4
  store i32 %t233, i32* %t1592, align 4
  store float %t235, float* %t1593, align 4
  store float %t237, float* %t1594, align 4
  store float %t239, float* %t1595, align 4
  store float %t241, float* %t1596, align 4
  store float %t243, float* %t1597, align 4
  store float %t245, float* %t1598, align 4
  store i32 %t247, i32* %t1599, align 4
  store float %t249, float* %t1600, align 4
  store i32 %t251, i32* %t1601, align 4
  store i32 %t253, i32* %t1602, align 4
  store float %t255, float* %t1603, align 4
  store float %t257, float* %t1604, align 4
  store float %t259, float* %t1605, align 4
  store float %t261, float* %t1606, align 4
  store float %t263, float* %t1607, align 4
  store i32 %t265, i32* %t1608, align 4
  store float %t267, float* %t1609, align 4
  store i32 %t269, i32* %t1610, align 4
  store float %t271, float* %t1611, align 4
  store float %t273, float* %t1612, align 4
  store float %t275, float* %t1613, align 4
  store float %t277, float* %t1614, align 4
  store i32 %t279, i32* %t1615, align 4
  store i32 %t281, i32* %t1616, align 4
  store float %t283, float* %t1617, align 4
  store float %t285, float* %t1618, align 4
  store float %t287, float* %t1619, align 4
  store i32 %t289, i32* %t1620, align 4
  store float %t291, float* %t1621, align 4
  store i32 %t293, i32* %t1622, align 4
  store i32 %t295, i32* %t1623, align 4
  store float %t297, float* %t1624, align 4
  store float %t299, float* %t1625, align 4
  store float %t301, float* %t1626, align 4
  store float %t303, float* %t1627, align 4
  store i32 %t305, i32* %t1628, align 4
  store i32 %t307, i32* %t1629, align 4
  store i32 %t309, i32* %t1630, align 4
  store float %t311, float* %t1631, align 4
  store float %t313, float* %t1632, align 4
  store float %t315, float* %t1633, align 4
  store float %t317, float* %t1634, align 4
  store float %t319, float* %t1635, align 4
  store float %t321, float* %t1636, align 4
  store i32 %t323, i32* %t1637, align 4
  store float %t325, float* %t1638, align 4
  store i32 %t327, i32* %t1639, align 4
  store float %t329, float* %t1640, align 4
  %t331 = load i32, i32* %t1577, align 4
  %t332 = icmp ne i32 %t331, 0
  br i1 %t332, label %B1641, label %B1646
B1641:                               	; preds = %B1576
  %t1648 = bitcast [10 x float]* %t1647 to i8*
  call void @llvm.memset.p0.i32(i8* %t1648, i8 0, i32 40, i1 0)
  %t333 = load float, float* %t1619, align 4
  %t334 = load float, float* %t1595, align 4
  %t335 = fadd float %t333, %t334
  %t336 = load float, float* %t1638, align 4
  %t337 = fadd float %t335, %t336
  %t338 = load float, float* %t1588, align 4
  %t339 = fadd float %t337, %t338
  %t1649 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 0
  store float %t339, float* %t1649, align 4
  %t340 = load float, float* %t1580, align 4
  %t341 = load float, float* %t1613, align 4
  %t342 = fadd float %t340, %t341
  %t343 = load float, float* %t1598, align 4
  %t344 = fadd float %t342, %t343
  %t345 = load float, float* %t1586, align 4
  %t346 = fadd float %t344, %t345
  %t1650 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 1
  store float %t346, float* %t1650, align 4
  %t347 = load float, float* %t1584, align 4
  %t348 = load float, float* %t1606, align 4
  %t349 = fadd float %t347, %t348
  %t350 = load float, float* %t1618, align 4
  %t351 = fadd float %t349, %t350
  %t352 = load float, float* %t1596, align 4
  %t353 = fadd float %t351, %t352
  %t1651 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 2
  store float %t353, float* %t1651, align 4
  %t354 = load float, float* %t1594, align 4
  %t355 = load float, float* %t1626, align 4
  %t356 = fadd float %t354, %t355
  %t357 = load float, float* %t1617, align 4
  %t358 = fadd float %t356, %t357
  %t359 = load float, float* %t1585, align 4
  %t360 = fadd float %t358, %t359
  %t1652 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 3
  store float %t360, float* %t1652, align 4
  %t361 = load float, float* %t1612, align 4
  %t362 = load float, float* %t1636, align 4
  %t363 = fadd float %t361, %t362
  %t364 = load float, float* %t1631, align 4
  %t365 = fadd float %t363, %t364
  %t366 = load float, float* %t1632, align 4
  %t367 = fadd float %t365, %t366
  %t1653 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 4
  store float %t367, float* %t1653, align 4
  %t368 = load float, float* %t1603, align 4
  %t369 = load float, float* %t1611, align 4
  %t370 = fadd float %t368, %t369
  %t371 = load float, float* %t1633, align 4
  %t372 = fadd float %t370, %t371
  %t373 = load float, float* %t1605, align 4
  %t374 = fadd float %t372, %t373
  %t1654 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 5
  store float %t374, float* %t1654, align 4
  %t375 = load float, float* %t1625, align 4
  %t376 = load float, float* %t1607, align 4
  %t377 = fadd float %t375, %t376
  %t378 = load float, float* %t1634, align 4
  %t379 = fadd float %t377, %t378
  %t380 = load float, float* %t1624, align 4
  %t381 = fadd float %t379, %t380
  %t1655 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 6
  store float %t381, float* %t1655, align 4
  %t382 = load float, float* %t1589, align 4
  %t383 = load float, float* %t1627, align 4
  %t384 = fadd float %t382, %t383
  %t385 = load float, float* %t1593, align 4
  %t386 = fadd float %t384, %t385
  %t387 = load float, float* %t1621, align 4
  %t388 = fadd float %t386, %t387
  %t1656 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 7
  store float %t388, float* %t1656, align 4
  %t389 = load float, float* %t1600, align 4
  %t390 = load float, float* %t1604, align 4
  %t391 = fadd float %t389, %t390
  %t392 = load float, float* %t1614, align 4
  %t393 = fadd float %t391, %t392
  %t394 = load float, float* %t1640, align 4
  %t395 = fadd float %t393, %t394
  %t1657 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 8
  store float %t395, float* %t1657, align 4
  %t396 = load float, float* %t1635, align 4
  %t397 = load float, float* %t1591, align 4
  %t398 = fadd float %t396, %t397
  %t399 = load float, float* %t1597, align 4
  %t400 = fadd float %t398, %t399
  %t401 = load float, float* %t1609, align 4
  %t402 = fadd float %t400, %t401
  %t1658 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 9
  store float %t402, float* %t1658, align 4
  %t1660 = bitcast [8 x i32]* %t1659 to i8*
  call void @llvm.memset.p0.i32(i8* %t1660, i8 0, i32 32, i1 0)
  %t404 = load i32, i32* %t1590, align 4
  %t405 = load i32, i32* %t1581, align 4
  %t406 = add i32 %t404, %t405
  %t407 = load i32, i32* %t1578, align 4
  %t408 = add i32 %t406, %t407
  %t1661 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 0
  store i32 %t408, i32* %t1661, align 4
  %t409 = load i32, i32* %t1628, align 4
  %t410 = load i32, i32* %t1582, align 4
  %t411 = add i32 %t409, %t410
  %t412 = load i32, i32* %t1583, align 4
  %t413 = add i32 %t411, %t412
  %t1662 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 1
  store i32 %t413, i32* %t1662, align 4
  %t414 = load i32, i32* %t1579, align 4
  %t415 = load i32, i32* %t1599, align 4
  %t416 = add i32 %t414, %t415
  %t417 = load i32, i32* %t1608, align 4
  %t418 = add i32 %t416, %t417
  %t1663 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 2
  store i32 %t418, i32* %t1663, align 4
  %t419 = load i32, i32* %t1616, align 4
  %t420 = load i32, i32* %t1601, align 4
  %t421 = add i32 %t419, %t420
  %t422 = load i32, i32* %t1622, align 4
  %t423 = add i32 %t421, %t422
  %t1664 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 3
  store i32 %t423, i32* %t1664, align 4
  %t424 = load i32, i32* %t1620, align 4
  %t425 = load i32, i32* %t1602, align 4
  %t426 = add i32 %t424, %t425
  %t427 = load i32, i32* %t1639, align 4
  %t428 = add i32 %t426, %t427
  %t1665 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 4
  store i32 %t428, i32* %t1665, align 4
  %t429 = load i32, i32* %t1637, align 4
  %t430 = load i32, i32* %t1623, align 4
  %t431 = add i32 %t429, %t430
  %t432 = load i32, i32* %t1610, align 4
  %t433 = add i32 %t431, %t432
  %t1666 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 5
  store i32 %t433, i32* %t1666, align 4
  %t434 = load i32, i32* %t1615, align 4
  %t435 = load i32, i32* %t1592, align 4
  %t436 = add i32 %t434, %t435
  %t437 = load i32, i32* %t1630, align 4
  %t438 = add i32 %t436, %t437
  %t1667 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 6
  store i32 %t438, i32* %t1667, align 4
  %t439 = load i32, i32* %t1629, align 4
  %t440 = load i32, i32* %t1587, align 4
  %t441 = add i32 %t439, %t440
  %t442 = load i32, i32* %t1577, align 4
  %t443 = add i32 %t441, %t442
  %t1668 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 7
  store i32 %t443, i32* %t1668, align 4
  %t445 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 0
  call void @putfarray(i32 10, float* %t445)
  %t446 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 0
  call void @putarray(i32 8, i32* %t446)
  store i32 0, i32* %t1669, align 4
  br label %B1670
B1646:                               	; preds = %B1576
  br label %B1642
B1670:                               	; preds = %B1641, %B1671
  %t448 = load i32, i32* %t1669, align 4
  %t449 = icmp slt i32 %t448, 8
  br i1 %t449, label %B1671, label %B1675
B1642:                               	; preds = %B1646
  %t465 = load i32, i32* %t1581, align 4
  %t466 = load i32, i32* %t1578, align 4
  %t467 = load i32, i32* %t1579, align 4
  %t468 = load float, float* %t1580, align 4
  %t469 = load i32, i32* %t1581, align 4
  %t470 = load i32, i32* %t1582, align 4
  %t471 = load i32, i32* %t1583, align 4
  %t472 = load float, float* %t1584, align 4
  %t473 = load float, float* %t1585, align 4
  %t474 = load float, float* %t1586, align 4
  %t475 = load i32, i32* %t1587, align 4
  %t476 = load float, float* %t1588, align 4
  %t477 = load float, float* %t1589, align 4
  %t478 = load i32, i32* %t1590, align 4
  %t479 = load float, float* %t1591, align 4
  %t480 = load i32, i32* %t1592, align 4
  %t481 = load float, float* %t1593, align 4
  %t482 = load float, float* %t1594, align 4
  %t483 = load float, float* %t1595, align 4
  %t484 = load float, float* %t1596, align 4
  %t485 = load float, float* %t1597, align 4
  %t486 = load float, float* %t1598, align 4
  %t487 = load i32, i32* %t1599, align 4
  %t488 = load float, float* %t1600, align 4
  %t489 = load i32, i32* %t1601, align 4
  %t490 = load i32, i32* %t1602, align 4
  %t491 = load float, float* %t1603, align 4
  %t492 = load float, float* %t1604, align 4
  %t493 = load float, float* %t1605, align 4
  %t494 = load float, float* %t1606, align 4
  %t495 = load float, float* %t1607, align 4
  %t496 = load i32, i32* %t1608, align 4
  %t497 = load float, float* %t1609, align 4
  %t498 = load i32, i32* %t1610, align 4
  %t499 = load float, float* %t1611, align 4
  %t500 = load float, float* %t1612, align 4
  %t501 = load float, float* %t1613, align 4
  %t502 = load float, float* %t1614, align 4
  %t503 = load i32, i32* %t1615, align 4
  %t504 = load i32, i32* %t1616, align 4
  %t505 = load float, float* %t1617, align 4
  %t506 = load float, float* %t1618, align 4
  %t507 = load float, float* %t1619, align 4
  %t508 = load i32, i32* %t1620, align 4
  %t509 = load float, float* %t1621, align 4
  %t510 = load i32, i32* %t1622, align 4
  %t511 = load i32, i32* %t1623, align 4
  %t512 = load float, float* %t1624, align 4
  %t513 = load float, float* %t1625, align 4
  %t514 = load float, float* %t1626, align 4
  %t515 = load float, float* %t1627, align 4
  %t516 = load i32, i32* %t1628, align 4
  %t517 = load i32, i32* %t1629, align 4
  %t518 = load i32, i32* %t1630, align 4
  %t519 = load float, float* %t1631, align 4
  %t520 = load float, float* %t1632, align 4
  %t521 = load float, float* %t1633, align 4
  %t522 = load float, float* %t1634, align 4
  %t523 = load float, float* %t1635, align 4
  %t524 = load float, float* %t1636, align 4
  %t525 = load i32, i32* %t1637, align 4
  %t526 = load float, float* %t1638, align 4
  %t527 = load i32, i32* %t1639, align 4
  %t528 = load float, float* %t1640, align 4
  %t529 = call float @params_f40_i24(i32 %t465, i32 %t466, i32 %t467, float %t468, i32 %t469, i32 %t470, i32 %t471, float %t472, float %t473, float %t474, i32 %t475, float %t476, float %t477, i32 %t478, float %t479, i32 %t480, float %t481, float %t482, float %t483, float %t484, float %t485, float %t486, i32 %t487, float %t488, i32 %t489, i32 %t490, float %t491, float %t492, float %t493, float %t494, float %t495, i32 %t496, float %t497, i32 %t498, float %t499, float %t500, float %t501, float %t502, i32 %t503, i32 %t504, float %t505, float %t506, float %t507, i32 %t508, float %t509, i32 %t510, i32 %t511, float %t512, float %t513, float %t514, float %t515, i32 %t516, i32 %t517, i32 %t518, float %t519, float %t520, float %t521, float %t522, float %t523, float %t524, i32 %t525, float %t526, i32 %t527, float %t528)
  ret float %t529
B1671:                               	; preds = %B1670
  %t452 = load i32, i32* %t1669, align 4
  %t453 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 %t452
  %t1676 = load i32, i32* %t453, align 4
  %t457 = sitofp i32 %t1676 to float
  %t454 = load i32, i32* %t1669, align 4
  %t455 = getelementptr inbounds [10 x float], [10 x float]* %t1647, i32 0, i32 %t454
  %t1677 = load float, float* %t455, align 4
  %t456 = fsub float %t457, %t1677
  %t458 = fptosi float %t456 to i32
  %t450 = load i32, i32* %t1669, align 4
  %t451 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 %t450
  store i32 %t458, i32* %t451, align 4
  %t460 = load i32, i32* %t1669, align 4
  %t461 = add i32 %t460, 1
  store i32 %t461, i32* %t1669, align 4
  br label %B1670
B1675:                               	; preds = %B1670
  br label %B1672
B1672:                               	; preds = %B1675
  %t462 = load i32, i32* @k, align 4
  %t463 = getelementptr inbounds [8 x i32], [8 x i32]* %t1659, i32 0, i32 %t462
  %t1678 = load i32, i32* %t463, align 4
  %t464 = sitofp i32 %t1678 to float
  ret float %t464
}
define float @params_fa40(float* %t530, float* %t532, float* %t534, float* %t536, float* %t538, float* %t540, float* %t542, float* %t544, float* %t546, float* %t548, float* %t550, float* %t552, float* %t554, float* %t556, float* %t558, float* %t560, float* %t562, float* %t564, float* %t566, float* %t568, float* %t570, float* %t572, float* %t574, float* %t576, float* %t578, float* %t580, float* %t582, float* %t584, float* %t586, float* %t588, float* %t590, float* %t592, float* %t594, float* %t596, float* %t598, float* %t600, float* %t602, float* %t604, float* %t606, float* %t608) {
B1679:
  %t1680 = alloca float*, align 4
  %t1681 = alloca float*, align 4
  %t1682 = alloca float*, align 4
  %t1683 = alloca float*, align 4
  %t1684 = alloca float*, align 4
  %t1685 = alloca float*, align 4
  %t1686 = alloca float*, align 4
  %t1687 = alloca float*, align 4
  %t1688 = alloca float*, align 4
  %t1689 = alloca float*, align 4
  %t1690 = alloca float*, align 4
  %t1691 = alloca float*, align 4
  %t1692 = alloca float*, align 4
  %t1693 = alloca float*, align 4
  %t1694 = alloca float*, align 4
  %t1695 = alloca float*, align 4
  %t1696 = alloca float*, align 4
  %t1697 = alloca float*, align 4
  %t1698 = alloca float*, align 4
  %t1699 = alloca float*, align 4
  %t1700 = alloca float*, align 4
  %t1701 = alloca float*, align 4
  %t1702 = alloca float*, align 4
  %t1703 = alloca float*, align 4
  %t1704 = alloca float*, align 4
  %t1705 = alloca float*, align 4
  %t1706 = alloca float*, align 4
  %t1707 = alloca float*, align 4
  %t1708 = alloca float*, align 4
  %t1709 = alloca float*, align 4
  %t1710 = alloca float*, align 4
  %t1711 = alloca float*, align 4
  %t1712 = alloca float*, align 4
  %t1713 = alloca float*, align 4
  %t1714 = alloca float*, align 4
  %t1715 = alloca float*, align 4
  %t1716 = alloca float*, align 4
  %t1717 = alloca float*, align 4
  %t1718 = alloca float*, align 4
  %t1719 = alloca float*, align 4
  %t1720 = alloca [10 x float], align 4
  store float* %t530, float** %t1680, align 4
  store float* %t532, float** %t1681, align 4
  store float* %t534, float** %t1682, align 4
  store float* %t536, float** %t1683, align 4
  store float* %t538, float** %t1684, align 4
  store float* %t540, float** %t1685, align 4
  store float* %t542, float** %t1686, align 4
  store float* %t544, float** %t1687, align 4
  store float* %t546, float** %t1688, align 4
  store float* %t548, float** %t1689, align 4
  store float* %t550, float** %t1690, align 4
  store float* %t552, float** %t1691, align 4
  store float* %t554, float** %t1692, align 4
  store float* %t556, float** %t1693, align 4
  store float* %t558, float** %t1694, align 4
  store float* %t560, float** %t1695, align 4
  store float* %t562, float** %t1696, align 4
  store float* %t564, float** %t1697, align 4
  store float* %t566, float** %t1698, align 4
  store float* %t568, float** %t1699, align 4
  store float* %t570, float** %t1700, align 4
  store float* %t572, float** %t1701, align 4
  store float* %t574, float** %t1702, align 4
  store float* %t576, float** %t1703, align 4
  store float* %t578, float** %t1704, align 4
  store float* %t580, float** %t1705, align 4
  store float* %t582, float** %t1706, align 4
  store float* %t584, float** %t1707, align 4
  store float* %t586, float** %t1708, align 4
  store float* %t588, float** %t1709, align 4
  store float* %t590, float** %t1710, align 4
  store float* %t592, float** %t1711, align 4
  store float* %t594, float** %t1712, align 4
  store float* %t596, float** %t1713, align 4
  store float* %t598, float** %t1714, align 4
  store float* %t600, float** %t1715, align 4
  store float* %t602, float** %t1716, align 4
  store float* %t604, float** %t1717, align 4
  store float* %t606, float** %t1718, align 4
  store float* %t608, float** %t1719, align 4
  %t1721 = bitcast [10 x float]* %t1720 to i8*
  call void @llvm.memset.p0.i32(i8* %t1721, i8 0, i32 40, i1 0)
  %t1722 = load float*, float** %t1680, align 4
  %t610 = load i32, i32* @k, align 4
  %t611 = getelementptr inbounds float, float* %t1722, i32 %t610
  %t1723 = load float, float* %t611, align 4
  %t1724 = load float*, float** %t1681, align 4
  %t612 = load i32, i32* @k, align 4
  %t613 = getelementptr inbounds float, float* %t1724, i32 %t612
  %t1725 = load float, float* %t613, align 4
  %t614 = fadd float %t1723, %t1725
  %t1726 = load float*, float** %t1682, align 4
  %t615 = load i32, i32* @k, align 4
  %t616 = getelementptr inbounds float, float* %t1726, i32 %t615
  %t1727 = load float, float* %t616, align 4
  %t617 = fadd float %t614, %t1727
  %t1728 = load float*, float** %t1683, align 4
  %t618 = load i32, i32* @k, align 4
  %t619 = getelementptr inbounds float, float* %t1728, i32 %t618
  %t1729 = load float, float* %t619, align 4
  %t620 = fadd float %t617, %t1729
  %t1730 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 0
  store float %t620, float* %t1730, align 4
  %t1731 = load float*, float** %t1684, align 4
  %t621 = load i32, i32* @k, align 4
  %t622 = getelementptr inbounds float, float* %t1731, i32 %t621
  %t1732 = load float, float* %t622, align 4
  %t1733 = load float*, float** %t1685, align 4
  %t623 = load i32, i32* @k, align 4
  %t624 = getelementptr inbounds float, float* %t1733, i32 %t623
  %t1734 = load float, float* %t624, align 4
  %t625 = fadd float %t1732, %t1734
  %t1735 = load float*, float** %t1686, align 4
  %t626 = load i32, i32* @k, align 4
  %t627 = getelementptr inbounds float, float* %t1735, i32 %t626
  %t1736 = load float, float* %t627, align 4
  %t628 = fadd float %t625, %t1736
  %t1737 = load float*, float** %t1687, align 4
  %t629 = load i32, i32* @k, align 4
  %t630 = getelementptr inbounds float, float* %t1737, i32 %t629
  %t1738 = load float, float* %t630, align 4
  %t631 = fadd float %t628, %t1738
  %t1739 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 1
  store float %t631, float* %t1739, align 4
  %t1740 = load float*, float** %t1688, align 4
  %t632 = load i32, i32* @k, align 4
  %t633 = getelementptr inbounds float, float* %t1740, i32 %t632
  %t1741 = load float, float* %t633, align 4
  %t1742 = load float*, float** %t1689, align 4
  %t634 = load i32, i32* @k, align 4
  %t635 = getelementptr inbounds float, float* %t1742, i32 %t634
  %t1743 = load float, float* %t635, align 4
  %t636 = fadd float %t1741, %t1743
  %t1744 = load float*, float** %t1690, align 4
  %t637 = load i32, i32* @k, align 4
  %t638 = getelementptr inbounds float, float* %t1744, i32 %t637
  %t1745 = load float, float* %t638, align 4
  %t639 = fadd float %t636, %t1745
  %t1746 = load float*, float** %t1691, align 4
  %t640 = load i32, i32* @k, align 4
  %t641 = getelementptr inbounds float, float* %t1746, i32 %t640
  %t1747 = load float, float* %t641, align 4
  %t642 = fadd float %t639, %t1747
  %t1748 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 2
  store float %t642, float* %t1748, align 4
  %t1749 = load float*, float** %t1692, align 4
  %t643 = load i32, i32* @k, align 4
  %t644 = getelementptr inbounds float, float* %t1749, i32 %t643
  %t1750 = load float, float* %t644, align 4
  %t1751 = load float*, float** %t1693, align 4
  %t645 = load i32, i32* @k, align 4
  %t646 = getelementptr inbounds float, float* %t1751, i32 %t645
  %t1752 = load float, float* %t646, align 4
  %t647 = fadd float %t1750, %t1752
  %t1753 = load float*, float** %t1694, align 4
  %t648 = load i32, i32* @k, align 4
  %t649 = getelementptr inbounds float, float* %t1753, i32 %t648
  %t1754 = load float, float* %t649, align 4
  %t650 = fadd float %t647, %t1754
  %t1755 = load float*, float** %t1695, align 4
  %t651 = load i32, i32* @k, align 4
  %t652 = getelementptr inbounds float, float* %t1755, i32 %t651
  %t1756 = load float, float* %t652, align 4
  %t653 = fadd float %t650, %t1756
  %t1757 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 3
  store float %t653, float* %t1757, align 4
  %t1758 = load float*, float** %t1696, align 4
  %t654 = load i32, i32* @k, align 4
  %t655 = getelementptr inbounds float, float* %t1758, i32 %t654
  %t1759 = load float, float* %t655, align 4
  %t1760 = load float*, float** %t1697, align 4
  %t656 = load i32, i32* @k, align 4
  %t657 = getelementptr inbounds float, float* %t1760, i32 %t656
  %t1761 = load float, float* %t657, align 4
  %t658 = fadd float %t1759, %t1761
  %t1762 = load float*, float** %t1698, align 4
  %t659 = load i32, i32* @k, align 4
  %t660 = getelementptr inbounds float, float* %t1762, i32 %t659
  %t1763 = load float, float* %t660, align 4
  %t661 = fadd float %t658, %t1763
  %t1764 = load float*, float** %t1699, align 4
  %t662 = load i32, i32* @k, align 4
  %t663 = getelementptr inbounds float, float* %t1764, i32 %t662
  %t1765 = load float, float* %t663, align 4
  %t664 = fadd float %t661, %t1765
  %t1766 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 4
  store float %t664, float* %t1766, align 4
  %t1767 = load float*, float** %t1700, align 4
  %t665 = load i32, i32* @k, align 4
  %t666 = getelementptr inbounds float, float* %t1767, i32 %t665
  %t1768 = load float, float* %t666, align 4
  %t1769 = load float*, float** %t1701, align 4
  %t667 = load i32, i32* @k, align 4
  %t668 = getelementptr inbounds float, float* %t1769, i32 %t667
  %t1770 = load float, float* %t668, align 4
  %t669 = fadd float %t1768, %t1770
  %t1771 = load float*, float** %t1702, align 4
  %t670 = load i32, i32* @k, align 4
  %t671 = getelementptr inbounds float, float* %t1771, i32 %t670
  %t1772 = load float, float* %t671, align 4
  %t672 = fadd float %t669, %t1772
  %t1773 = load float*, float** %t1703, align 4
  %t673 = load i32, i32* @k, align 4
  %t674 = getelementptr inbounds float, float* %t1773, i32 %t673
  %t1774 = load float, float* %t674, align 4
  %t675 = fadd float %t672, %t1774
  %t1775 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 5
  store float %t675, float* %t1775, align 4
  %t1776 = load float*, float** %t1704, align 4
  %t676 = load i32, i32* @k, align 4
  %t677 = getelementptr inbounds float, float* %t1776, i32 %t676
  %t1777 = load float, float* %t677, align 4
  %t1778 = load float*, float** %t1705, align 4
  %t678 = load i32, i32* @k, align 4
  %t679 = getelementptr inbounds float, float* %t1778, i32 %t678
  %t1779 = load float, float* %t679, align 4
  %t680 = fadd float %t1777, %t1779
  %t1780 = load float*, float** %t1706, align 4
  %t681 = load i32, i32* @k, align 4
  %t682 = getelementptr inbounds float, float* %t1780, i32 %t681
  %t1781 = load float, float* %t682, align 4
  %t683 = fadd float %t680, %t1781
  %t1782 = load float*, float** %t1707, align 4
  %t684 = load i32, i32* @k, align 4
  %t685 = getelementptr inbounds float, float* %t1782, i32 %t684
  %t1783 = load float, float* %t685, align 4
  %t686 = fadd float %t683, %t1783
  %t1784 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 6
  store float %t686, float* %t1784, align 4
  %t1785 = load float*, float** %t1708, align 4
  %t687 = load i32, i32* @k, align 4
  %t688 = getelementptr inbounds float, float* %t1785, i32 %t687
  %t1786 = load float, float* %t688, align 4
  %t1787 = load float*, float** %t1709, align 4
  %t689 = load i32, i32* @k, align 4
  %t690 = getelementptr inbounds float, float* %t1787, i32 %t689
  %t1788 = load float, float* %t690, align 4
  %t691 = fadd float %t1786, %t1788
  %t1789 = load float*, float** %t1710, align 4
  %t692 = load i32, i32* @k, align 4
  %t693 = getelementptr inbounds float, float* %t1789, i32 %t692
  %t1790 = load float, float* %t693, align 4
  %t694 = fadd float %t691, %t1790
  %t1791 = load float*, float** %t1711, align 4
  %t695 = load i32, i32* @k, align 4
  %t696 = getelementptr inbounds float, float* %t1791, i32 %t695
  %t1792 = load float, float* %t696, align 4
  %t697 = fadd float %t694, %t1792
  %t1793 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 7
  store float %t697, float* %t1793, align 4
  %t1794 = load float*, float** %t1712, align 4
  %t698 = load i32, i32* @k, align 4
  %t699 = getelementptr inbounds float, float* %t1794, i32 %t698
  %t1795 = load float, float* %t699, align 4
  %t1796 = load float*, float** %t1713, align 4
  %t700 = load i32, i32* @k, align 4
  %t701 = getelementptr inbounds float, float* %t1796, i32 %t700
  %t1797 = load float, float* %t701, align 4
  %t702 = fadd float %t1795, %t1797
  %t1798 = load float*, float** %t1714, align 4
  %t703 = load i32, i32* @k, align 4
  %t704 = getelementptr inbounds float, float* %t1798, i32 %t703
  %t1799 = load float, float* %t704, align 4
  %t705 = fadd float %t702, %t1799
  %t1800 = load float*, float** %t1715, align 4
  %t706 = load i32, i32* @k, align 4
  %t707 = getelementptr inbounds float, float* %t1800, i32 %t706
  %t1801 = load float, float* %t707, align 4
  %t708 = fadd float %t705, %t1801
  %t1802 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 8
  store float %t708, float* %t1802, align 4
  %t1803 = load float*, float** %t1716, align 4
  %t709 = load i32, i32* @k, align 4
  %t710 = getelementptr inbounds float, float* %t1803, i32 %t709
  %t1804 = load float, float* %t710, align 4
  %t1805 = load float*, float** %t1717, align 4
  %t711 = load i32, i32* @k, align 4
  %t712 = getelementptr inbounds float, float* %t1805, i32 %t711
  %t1806 = load float, float* %t712, align 4
  %t713 = fadd float %t1804, %t1806
  %t1807 = load float*, float** %t1718, align 4
  %t714 = load i32, i32* @k, align 4
  %t715 = getelementptr inbounds float, float* %t1807, i32 %t714
  %t1808 = load float, float* %t715, align 4
  %t716 = fadd float %t713, %t1808
  %t1809 = load float*, float** %t1719, align 4
  %t717 = load i32, i32* @k, align 4
  %t718 = getelementptr inbounds float, float* %t1809, i32 %t717
  %t1810 = load float, float* %t718, align 4
  %t719 = fadd float %t716, %t1810
  %t1811 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 9
  store float %t719, float* %t1811, align 4
  %t1815 = load float*, float** %t1719, align 4
  %t721 = load i32, i32* @k, align 4
  %t722 = getelementptr inbounds float, float* %t1815, i32 %t721
  %t1816 = load float, float* %t722, align 4
  %t724 = sitofp i32 0 to float
  %t723 = icmp ne float %t1816, %t724
  %t1820 = zext i1 %t723 to i32
  %t725 = icmp ne i32 %t1820, 0
  %t727 = sitofp i1 %t725 to float
  %t726 = icmp ne float %t727, 0.000000
  %t1827 = zext i1 %t726 to i32
  %t728 = icmp ne i32 %t1827, 0.000000
  br i1 %t728, label %B1812, label %B1830
B1812:                               	; preds = %B1679
  %t729 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 0
  call void @putfarray(i32 10, float* %t729)
  %t730 = load i32, i32* @k, align 4
  %t731 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 %t730
  %t1831 = load float, float* %t731, align 4
  ret float %t1831
B1830:                               	; preds = %B1679
  br label %B1813
B1813:                               	; preds = %B1830
  %t1832 = load float*, float** %t1681, align 4
  %t1833 = load float*, float** %t1682, align 4
  %t1834 = load float*, float** %t1683, align 4
  %t1835 = load float*, float** %t1684, align 4
  %t1836 = load float*, float** %t1685, align 4
  %t1837 = load float*, float** %t1686, align 4
  %t1838 = load float*, float** %t1687, align 4
  %t1839 = load float*, float** %t1688, align 4
  %t1840 = load float*, float** %t1689, align 4
  %t1841 = load float*, float** %t1690, align 4
  %t1842 = load float*, float** %t1691, align 4
  %t1843 = load float*, float** %t1692, align 4
  %t1844 = load float*, float** %t1693, align 4
  %t1845 = load float*, float** %t1694, align 4
  %t1846 = load float*, float** %t1695, align 4
  %t1847 = load float*, float** %t1696, align 4
  %t1848 = load float*, float** %t1697, align 4
  %t1849 = load float*, float** %t1698, align 4
  %t1850 = load float*, float** %t1699, align 4
  %t1851 = load float*, float** %t1700, align 4
  %t1852 = load float*, float** %t1701, align 4
  %t1853 = load float*, float** %t1702, align 4
  %t1854 = load float*, float** %t1703, align 4
  %t1855 = load float*, float** %t1704, align 4
  %t1856 = load float*, float** %t1705, align 4
  %t1857 = load float*, float** %t1706, align 4
  %t1858 = load float*, float** %t1707, align 4
  %t1859 = load float*, float** %t1708, align 4
  %t1860 = load float*, float** %t1709, align 4
  %t1861 = load float*, float** %t1710, align 4
  %t1862 = load float*, float** %t1711, align 4
  %t1863 = load float*, float** %t1712, align 4
  %t1864 = load float*, float** %t1713, align 4
  %t1865 = load float*, float** %t1714, align 4
  %t1866 = load float*, float** %t1715, align 4
  %t1867 = load float*, float** %t1716, align 4
  %t1868 = load float*, float** %t1717, align 4
  %t1869 = load float*, float** %t1718, align 4
  %t1870 = load float*, float** %t1719, align 4
  %t771 = getelementptr inbounds [10 x float], [10 x float]* %t1720, i32 0, i32 0
  %t772 = call float @params_fa40(float* %t1832, float* %t1833, float* %t1834, float* %t1835, float* %t1836, float* %t1837, float* %t1838, float* %t1839, float* %t1840, float* %t1841, float* %t1842, float* %t1843, float* %t1844, float* %t1845, float* %t1846, float* %t1847, float* %t1848, float* %t1849, float* %t1850, float* %t1851, float* %t1852, float* %t1853, float* %t1854, float* %t1855, float* %t1856, float* %t1857, float* %t1858, float* %t1859, float* %t1860, float* %t1861, float* %t1862, float* %t1863, float* %t1864, float* %t1865, float* %t1866, float* %t1867, float* %t1868, float* %t1869, float* %t1870, float* %t771)
  ret float %t772
}
define i32 @params_mix(float %t773, i32* %t775, i32 %t777, float* %t779, float %t781, i32 %t783, float %t785, float %t787, float* %t789, i32* %t791, i32 %t793, i32 %t795, float* %t797, i32* %t799, i32* %t801, i32 %t803, float* %t805, float* %t807, float %t809, float %t811, float %t813, float* %t815, i32 %t817, float %t819, float %t821, float %t823, i32* %t825, float* %t827, i32* %t829, i32* %t831, float* %t833, float %t835, float %t837, i32* %t839, i32 %t841, float* %t843, float* %t845, float %t847, float %t849, i32* %t851, i32* %t853, i32 %t855, i32 %t857, float %t859, float %t861, i32* %t863, i32 %t865, float* %t867, i32 %t869, i32* %t871, i32* %t873, float %t875, float %t877, float* %t879, i32 %t881, i32* %t883, float* %t885, float %t887, i32 %t889, float %t891, float* %t893, float* %t895, float %t897, i32 %t899) {
B1871:
  %t1872 = alloca float, align 4
  %t1873 = alloca i32*, align 4
  %t1874 = alloca i32, align 4
  %t1875 = alloca float*, align 4
  %t1876 = alloca float, align 4
  %t1877 = alloca i32, align 4
  %t1878 = alloca float, align 4
  %t1879 = alloca float, align 4
  %t1880 = alloca float*, align 4
  %t1881 = alloca i32*, align 4
  %t1882 = alloca i32, align 4
  %t1883 = alloca i32, align 4
  %t1884 = alloca float*, align 4
  %t1885 = alloca i32*, align 4
  %t1886 = alloca i32*, align 4
  %t1887 = alloca i32, align 4
  %t1888 = alloca float*, align 4
  %t1889 = alloca float*, align 4
  %t1890 = alloca float, align 4
  %t1891 = alloca float, align 4
  %t1892 = alloca float, align 4
  %t1893 = alloca float*, align 4
  %t1894 = alloca i32, align 4
  %t1895 = alloca float, align 4
  %t1896 = alloca float, align 4
  %t1897 = alloca float, align 4
  %t1898 = alloca i32*, align 4
  %t1899 = alloca float*, align 4
  %t1900 = alloca i32*, align 4
  %t1901 = alloca i32*, align 4
  %t1902 = alloca float*, align 4
  %t1903 = alloca float, align 4
  %t1904 = alloca float, align 4
  %t1905 = alloca i32*, align 4
  %t1906 = alloca i32, align 4
  %t1907 = alloca float*, align 4
  %t1908 = alloca float*, align 4
  %t1909 = alloca float, align 4
  %t1910 = alloca float, align 4
  %t1911 = alloca i32*, align 4
  %t1912 = alloca i32*, align 4
  %t1913 = alloca i32, align 4
  %t1914 = alloca i32, align 4
  %t1915 = alloca float, align 4
  %t1916 = alloca float, align 4
  %t1917 = alloca i32*, align 4
  %t1918 = alloca i32, align 4
  %t1919 = alloca float*, align 4
  %t1920 = alloca i32, align 4
  %t1921 = alloca i32*, align 4
  %t1922 = alloca i32*, align 4
  %t1923 = alloca float, align 4
  %t1924 = alloca float, align 4
  %t1925 = alloca float*, align 4
  %t1926 = alloca i32, align 4
  %t1927 = alloca i32*, align 4
  %t1928 = alloca float*, align 4
  %t1929 = alloca float, align 4
  %t1930 = alloca i32, align 4
  %t1931 = alloca float, align 4
  %t1932 = alloca float*, align 4
  %t1933 = alloca float*, align 4
  %t1934 = alloca float, align 4
  %t1935 = alloca i32, align 4
  %t1936 = alloca [10 x float], align 4
  %t1977 = alloca [10 x i32], align 4
  %t2022 = alloca i32, align 4
  store float %t773, float* %t1872, align 4
  store i32* %t775, i32** %t1873, align 4
  store i32 %t777, i32* %t1874, align 4
  store float* %t779, float** %t1875, align 4
  store float %t781, float* %t1876, align 4
  store i32 %t783, i32* %t1877, align 4
  store float %t785, float* %t1878, align 4
  store float %t787, float* %t1879, align 4
  store float* %t789, float** %t1880, align 4
  store i32* %t791, i32** %t1881, align 4
  store i32 %t793, i32* %t1882, align 4
  store i32 %t795, i32* %t1883, align 4
  store float* %t797, float** %t1884, align 4
  store i32* %t799, i32** %t1885, align 4
  store i32* %t801, i32** %t1886, align 4
  store i32 %t803, i32* %t1887, align 4
  store float* %t805, float** %t1888, align 4
  store float* %t807, float** %t1889, align 4
  store float %t809, float* %t1890, align 4
  store float %t811, float* %t1891, align 4
  store float %t813, float* %t1892, align 4
  store float* %t815, float** %t1893, align 4
  store i32 %t817, i32* %t1894, align 4
  store float %t819, float* %t1895, align 4
  store float %t821, float* %t1896, align 4
  store float %t823, float* %t1897, align 4
  store i32* %t825, i32** %t1898, align 4
  store float* %t827, float** %t1899, align 4
  store i32* %t829, i32** %t1900, align 4
  store i32* %t831, i32** %t1901, align 4
  store float* %t833, float** %t1902, align 4
  store float %t835, float* %t1903, align 4
  store float %t837, float* %t1904, align 4
  store i32* %t839, i32** %t1905, align 4
  store i32 %t841, i32* %t1906, align 4
  store float* %t843, float** %t1907, align 4
  store float* %t845, float** %t1908, align 4
  store float %t847, float* %t1909, align 4
  store float %t849, float* %t1910, align 4
  store i32* %t851, i32** %t1911, align 4
  store i32* %t853, i32** %t1912, align 4
  store i32 %t855, i32* %t1913, align 4
  store i32 %t857, i32* %t1914, align 4
  store float %t859, float* %t1915, align 4
  store float %t861, float* %t1916, align 4
  store i32* %t863, i32** %t1917, align 4
  store i32 %t865, i32* %t1918, align 4
  store float* %t867, float** %t1919, align 4
  store i32 %t869, i32* %t1920, align 4
  store i32* %t871, i32** %t1921, align 4
  store i32* %t873, i32** %t1922, align 4
  store float %t875, float* %t1923, align 4
  store float %t877, float* %t1924, align 4
  store float* %t879, float** %t1925, align 4
  store i32 %t881, i32* %t1926, align 4
  store i32* %t883, i32** %t1927, align 4
  store float* %t885, float** %t1928, align 4
  store float %t887, float* %t1929, align 4
  store i32 %t889, i32* %t1930, align 4
  store float %t891, float* %t1931, align 4
  store float* %t893, float** %t1932, align 4
  store float* %t895, float** %t1933, align 4
  store float %t897, float* %t1934, align 4
  store i32 %t899, i32* %t1935, align 4
  %t1937 = bitcast [10 x float]* %t1936 to i8*
  call void @llvm.memset.p0.i32(i8* %t1937, i8 0, i32 40, i1 0)
  %t901 = load float, float* %t1872, align 4
  %t1938 = load float*, float** %t1875, align 4
  %t902 = load i32, i32* @k, align 4
  %t903 = getelementptr inbounds float, float* %t1938, i32 %t902
  %t1939 = load float, float* %t903, align 4
  %t904 = fadd float %t901, %t1939
  %t905 = load float, float* %t1876, align 4
  %t906 = fadd float %t904, %t905
  %t907 = load float, float* %t1878, align 4
  %t908 = fadd float %t906, %t907
  %t1940 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 0
  store float %t908, float* %t1940, align 4
  %t909 = load float, float* %t1879, align 4
  %t1941 = load float*, float** %t1880, align 4
  %t910 = load i32, i32* @k, align 4
  %t911 = getelementptr inbounds float, float* %t1941, i32 %t910
  %t1942 = load float, float* %t911, align 4
  %t912 = fadd float %t909, %t1942
  %t1943 = load float*, float** %t1884, align 4
  %t913 = load i32, i32* @k, align 4
  %t914 = getelementptr inbounds float, float* %t1943, i32 %t913
  %t1944 = load float, float* %t914, align 4
  %t915 = fadd float %t912, %t1944
  %t1945 = load float*, float** %t1888, align 4
  %t916 = load i32, i32* @k, align 4
  %t917 = getelementptr inbounds float, float* %t1945, i32 %t916
  %t1946 = load float, float* %t917, align 4
  %t918 = fadd float %t915, %t1946
  %t1947 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 1
  store float %t918, float* %t1947, align 4
  %t1948 = load float*, float** %t1889, align 4
  %t919 = load i32, i32* @k, align 4
  %t920 = getelementptr inbounds float, float* %t1948, i32 %t919
  %t1949 = load float, float* %t920, align 4
  %t921 = load float, float* %t1890, align 4
  %t922 = fadd float %t1949, %t921
  %t923 = load float, float* %t1891, align 4
  %t924 = fadd float %t922, %t923
  %t925 = load float, float* %t1892, align 4
  %t926 = fadd float %t924, %t925
  %t1950 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 2
  store float %t926, float* %t1950, align 4
  %t1951 = load float*, float** %t1893, align 4
  %t927 = load i32, i32* @k, align 4
  %t928 = getelementptr inbounds float, float* %t1951, i32 %t927
  %t1952 = load float, float* %t928, align 4
  %t929 = load float, float* %t1895, align 4
  %t930 = fadd float %t1952, %t929
  %t931 = load float, float* %t1896, align 4
  %t932 = fadd float %t930, %t931
  %t933 = load float, float* %t1897, align 4
  %t934 = fadd float %t932, %t933
  %t1953 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 3
  store float %t934, float* %t1953, align 4
  %t1954 = load float*, float** %t1899, align 4
  %t935 = load i32, i32* @k, align 4
  %t936 = getelementptr inbounds float, float* %t1954, i32 %t935
  %t1955 = load float, float* %t936, align 4
  %t1956 = load float*, float** %t1902, align 4
  %t937 = load i32, i32* @k, align 4
  %t938 = getelementptr inbounds float, float* %t1956, i32 %t937
  %t1957 = load float, float* %t938, align 4
  %t939 = fadd float %t1955, %t1957
  %t940 = load float, float* %t1903, align 4
  %t941 = fadd float %t939, %t940
  %t942 = load float, float* %t1904, align 4
  %t943 = fadd float %t941, %t942
  %t1958 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 4
  store float %t943, float* %t1958, align 4
  %t1959 = load float*, float** %t1907, align 4
  %t944 = load i32, i32* @k, align 4
  %t945 = getelementptr inbounds float, float* %t1959, i32 %t944
  %t1960 = load float, float* %t945, align 4
  %t1961 = load float*, float** %t1908, align 4
  %t946 = load i32, i32* @k, align 4
  %t947 = getelementptr inbounds float, float* %t1961, i32 %t946
  %t1962 = load float, float* %t947, align 4
  %t948 = fadd float %t1960, %t1962
  %t949 = load float, float* %t1909, align 4
  %t950 = fadd float %t948, %t949
  %t951 = load float, float* %t1910, align 4
  %t952 = fadd float %t950, %t951
  %t1963 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 5
  store float %t952, float* %t1963, align 4
  %t953 = load float, float* %t1915, align 4
  %t954 = load float, float* %t1916, align 4
  %t955 = fadd float %t953, %t954
  %t1964 = load float*, float** %t1919, align 4
  %t956 = load i32, i32* @k, align 4
  %t957 = getelementptr inbounds float, float* %t1964, i32 %t956
  %t1965 = load float, float* %t957, align 4
  %t958 = fadd float %t955, %t1965
  %t959 = load float, float* %t1923, align 4
  %t960 = fadd float %t958, %t959
  %t1966 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 6
  store float %t960, float* %t1966, align 4
  %t961 = load float, float* %t1924, align 4
  %t1967 = load float*, float** %t1925, align 4
  %t962 = load i32, i32* @k, align 4
  %t963 = getelementptr inbounds float, float* %t1967, i32 %t962
  %t1968 = load float, float* %t963, align 4
  %t964 = fadd float %t961, %t1968
  %t1969 = load float*, float** %t1928, align 4
  %t965 = load i32, i32* @k, align 4
  %t966 = getelementptr inbounds float, float* %t1969, i32 %t965
  %t1970 = load float, float* %t966, align 4
  %t967 = fadd float %t964, %t1970
  %t968 = load float, float* %t1929, align 4
  %t969 = fadd float %t967, %t968
  %t1971 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 7
  store float %t969, float* %t1971, align 4
  %t970 = load float, float* %t1931, align 4
  %t1972 = load float*, float** %t1932, align 4
  %t971 = load i32, i32* @k, align 4
  %t972 = getelementptr inbounds float, float* %t1972, i32 %t971
  %t1973 = load float, float* %t972, align 4
  %t973 = fadd float %t970, %t1973
  %t1974 = load float*, float** %t1933, align 4
  %t974 = load i32, i32* @k, align 4
  %t975 = getelementptr inbounds float, float* %t1974, i32 %t974
  %t1975 = load float, float* %t975, align 4
  %t976 = fadd float %t973, %t1975
  %t977 = load float, float* %t1934, align 4
  %t978 = fadd float %t976, %t977
  %t1976 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 8
  store float %t978, float* %t1976, align 4
  %t1978 = bitcast [10 x i32]* %t1977 to i8*
  call void @llvm.memset.p0.i32(i8* %t1978, i8 0, i32 40, i1 0)
  %t1979 = load i32*, i32** %t1873, align 4
  %t980 = load i32, i32* @k, align 4
  %t981 = getelementptr inbounds i32, i32* %t1979, i32 %t980
  %t1980 = load i32, i32* %t981, align 4
  %t982 = load i32, i32* %t1874, align 4
  %t983 = add i32 %t1980, %t982
  %t984 = load i32, i32* %t1877, align 4
  %t985 = add i32 %t983, %t984
  %t1981 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 0
  store i32 %t985, i32* %t1981, align 4
  %t1982 = load i32*, i32** %t1881, align 4
  %t986 = load i32, i32* @k, align 4
  %t987 = getelementptr inbounds i32, i32* %t1982, i32 %t986
  %t1983 = load i32, i32* %t987, align 4
  %t988 = load i32, i32* %t1882, align 4
  %t989 = add i32 %t1983, %t988
  %t990 = load i32, i32* %t1883, align 4
  %t991 = add i32 %t989, %t990
  %t1984 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 1
  store i32 %t991, i32* %t1984, align 4
  %t1985 = load i32*, i32** %t1885, align 4
  %t992 = load i32, i32* @k, align 4
  %t993 = getelementptr inbounds i32, i32* %t1985, i32 %t992
  %t1986 = load i32, i32* %t993, align 4
  %t1987 = load i32*, i32** %t1886, align 4
  %t994 = load i32, i32* @k, align 4
  %t995 = getelementptr inbounds i32, i32* %t1987, i32 %t994
  %t1988 = load i32, i32* %t995, align 4
  %t996 = add i32 %t1986, %t1988
  %t997 = load i32, i32* %t1887, align 4
  %t998 = add i32 %t996, %t997
  %t1989 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 2
  store i32 %t998, i32* %t1989, align 4
  %t999 = load i32, i32* %t1894, align 4
  %t1990 = load i32*, i32** %t1898, align 4
  %t1000 = load i32, i32* @k, align 4
  %t1001 = getelementptr inbounds i32, i32* %t1990, i32 %t1000
  %t1991 = load i32, i32* %t1001, align 4
  %t1002 = add i32 %t999, %t1991
  %t1992 = load i32*, i32** %t1900, align 4
  %t1003 = load i32, i32* @k, align 4
  %t1004 = getelementptr inbounds i32, i32* %t1992, i32 %t1003
  %t1993 = load i32, i32* %t1004, align 4
  %t1005 = add i32 %t1002, %t1993
  %t1994 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 3
  store i32 %t1005, i32* %t1994, align 4
  %t1995 = load i32*, i32** %t1901, align 4
  %t1006 = load i32, i32* @k, align 4
  %t1007 = getelementptr inbounds i32, i32* %t1995, i32 %t1006
  %t1996 = load i32, i32* %t1007, align 4
  %t1997 = load i32*, i32** %t1905, align 4
  %t1008 = load i32, i32* @k, align 4
  %t1009 = getelementptr inbounds i32, i32* %t1997, i32 %t1008
  %t1998 = load i32, i32* %t1009, align 4
  %t1010 = add i32 %t1996, %t1998
  %t1011 = load i32, i32* %t1906, align 4
  %t1012 = add i32 %t1010, %t1011
  %t1999 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 4
  store i32 %t1012, i32* %t1999, align 4
  %t2000 = load i32*, i32** %t1911, align 4
  %t1013 = load i32, i32* @k, align 4
  %t1014 = getelementptr inbounds i32, i32* %t2000, i32 %t1013
  %t2001 = load i32, i32* %t1014, align 4
  %t2002 = load i32*, i32** %t1912, align 4
  %t1015 = load i32, i32* @k, align 4
  %t1016 = getelementptr inbounds i32, i32* %t2002, i32 %t1015
  %t2003 = load i32, i32* %t1016, align 4
  %t1017 = add i32 %t2001, %t2003
  %t1018 = load i32, i32* %t1913, align 4
  %t1019 = add i32 %t1017, %t1018
  %t2004 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 5
  store i32 %t1019, i32* %t2004, align 4
  %t1020 = load i32, i32* %t1914, align 4
  %t2005 = load i32*, i32** %t1917, align 4
  %t1021 = load i32, i32* @k, align 4
  %t1022 = getelementptr inbounds i32, i32* %t2005, i32 %t1021
  %t2006 = load i32, i32* %t1022, align 4
  %t1023 = add i32 %t1020, %t2006
  %t1024 = load i32, i32* %t1918, align 4
  %t1025 = add i32 %t1023, %t1024
  %t2007 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 6
  store i32 %t1025, i32* %t2007, align 4
  %t1026 = load i32, i32* %t1920, align 4
  %t2008 = load i32*, i32** %t1921, align 4
  %t1027 = load i32, i32* @k, align 4
  %t1028 = getelementptr inbounds i32, i32* %t2008, i32 %t1027
  %t2009 = load i32, i32* %t1028, align 4
  %t1029 = add i32 %t1026, %t2009
  %t2010 = load i32*, i32** %t1922, align 4
  %t1030 = load i32, i32* @k, align 4
  %t1031 = getelementptr inbounds i32, i32* %t2010, i32 %t1030
  %t2011 = load i32, i32* %t1031, align 4
  %t1032 = add i32 %t1029, %t2011
  %t2012 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 7
  store i32 %t1032, i32* %t2012, align 4
  %t1033 = load i32, i32* %t1926, align 4
  %t2013 = load i32*, i32** %t1927, align 4
  %t1034 = load i32, i32* @k, align 4
  %t1035 = getelementptr inbounds i32, i32* %t2013, i32 %t1034
  %t2014 = load i32, i32* %t1035, align 4
  %t1036 = add i32 %t1033, %t2014
  %t1037 = load i32, i32* %t1930, align 4
  %t1038 = add i32 %t1036, %t1037
  %t1039 = load i32, i32* %t1935, align 4
  %t1040 = add i32 %t1038, %t1039
  %t2015 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 8
  store i32 %t1040, i32* %t2015, align 4
  %t1042 = load i32, i32* %t1935, align 4
  %t1043 = icmp ne i32 %t1042, 0
  br i1 %t1043, label %B2016, label %B2021
B2016:                               	; preds = %B1871
  %t1044 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 0
  call void @putfarray(i32 10, float* %t1044)
  %t1045 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 0
  call void @putarray(i32 10, i32* %t1045)
  store i32 0, i32* %t2022, align 4
  br label %B2023
B2021:                               	; preds = %B1871
  br label %B2017
B2023:                               	; preds = %B2016, %B2024
  %t1047 = load i32, i32* %t2022, align 4
  %t1048 = icmp slt i32 %t1047, 10
  br i1 %t1048, label %B2024, label %B2028
B2017:                               	; preds = %B2021
  %t1067 = load float, float* %t1872, align 4
  %t1068 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 0
  %t1069 = load i32, i32* %t1874, align 4
  %t1070 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 0
  %t1071 = load float, float* %t1876, align 4
  %t1072 = load i32, i32* %t1877, align 4
  %t1073 = load float, float* %t1878, align 4
  %t1074 = load float, float* %t1879, align 4
  %t2033 = load float*, float** %t1880, align 4
  %t2034 = load i32*, i32** %t1881, align 4
  %t1077 = load i32, i32* %t1882, align 4
  %t1078 = load i32, i32* %t1883, align 4
  %t2035 = load float*, float** %t1884, align 4
  %t2036 = load i32*, i32** %t1885, align 4
  %t2037 = load i32*, i32** %t1886, align 4
  %t1082 = load i32, i32* %t1887, align 4
  %t2038 = load float*, float** %t1888, align 4
  %t2039 = load float*, float** %t1889, align 4
  %t1085 = load float, float* %t1890, align 4
  %t1086 = load float, float* %t1891, align 4
  %t1087 = load float, float* %t1892, align 4
  %t2040 = load float*, float** %t1893, align 4
  %t1089 = load i32, i32* %t1894, align 4
  %t1090 = load float, float* %t1895, align 4
  %t1091 = load float, float* %t1896, align 4
  %t1092 = load float, float* %t1897, align 4
  %t2041 = load i32*, i32** %t1898, align 4
  %t2042 = load float*, float** %t1899, align 4
  %t2043 = load i32*, i32** %t1900, align 4
  %t2044 = load i32*, i32** %t1901, align 4
  %t2045 = load float*, float** %t1902, align 4
  %t1098 = load float, float* %t1903, align 4
  %t1099 = load float, float* %t1904, align 4
  %t2046 = load i32*, i32** %t1905, align 4
  %t1101 = load i32, i32* %t1906, align 4
  %t2047 = load float*, float** %t1907, align 4
  %t2048 = load float*, float** %t1908, align 4
  %t1104 = load float, float* %t1909, align 4
  %t1105 = load float, float* %t1910, align 4
  %t2049 = load i32*, i32** %t1911, align 4
  %t2050 = load i32*, i32** %t1912, align 4
  %t1108 = load i32, i32* %t1913, align 4
  %t1109 = load i32, i32* %t1914, align 4
  %t1110 = load float, float* %t1915, align 4
  %t1111 = load float, float* %t1916, align 4
  %t2051 = load i32*, i32** %t1917, align 4
  %t1113 = load i32, i32* %t1918, align 4
  %t2052 = load float*, float** %t1919, align 4
  %t1115 = load i32, i32* %t1920, align 4
  %t2053 = load i32*, i32** %t1921, align 4
  %t2054 = load i32*, i32** %t1922, align 4
  %t1118 = load float, float* %t1923, align 4
  %t1119 = load float, float* %t1924, align 4
  %t2055 = load float*, float** %t1925, align 4
  %t1121 = load i32, i32* %t1926, align 4
  %t2056 = load i32*, i32** %t1927, align 4
  %t2057 = load float*, float** %t1928, align 4
  %t1124 = load float, float* %t1929, align 4
  %t1125 = load i32, i32* %t1930, align 4
  %t1126 = load float, float* %t1931, align 4
  %t2058 = load float*, float** %t1932, align 4
  %t2059 = load float*, float** %t1933, align 4
  %t1129 = load i32, i32* %t1935, align 4
  %t1132 = sitofp i32 %t1129 to float
  %t1130 = load float, float* %t1934, align 4
  %t1133 = fptosi float %t1130 to i32
  %t1131 = call i32 @params_mix(float %t1067, i32* %t1068, i32 %t1069, float* %t1070, float %t1071, i32 %t1072, float %t1073, float %t1074, float* %t2033, i32* %t2034, i32 %t1077, i32 %t1078, float* %t2035, i32* %t2036, i32* %t2037, i32 %t1082, float* %t2038, float* %t2039, float %t1085, float %t1086, float %t1087, float* %t2040, i32 %t1089, float %t1090, float %t1091, float %t1092, i32* %t2041, float* %t2042, i32* %t2043, i32* %t2044, float* %t2045, float %t1098, float %t1099, i32* %t2046, i32 %t1101, float* %t2047, float* %t2048, float %t1104, float %t1105, i32* %t2049, i32* %t2050, i32 %t1108, i32 %t1109, float %t1110, float %t1111, i32* %t2051, i32 %t1113, float* %t2052, i32 %t1115, i32* %t2053, i32* %t2054, float %t1118, float %t1119, float* %t2055, i32 %t1121, i32* %t2056, float* %t2057, float %t1124, i32 %t1125, float %t1126, float* %t2058, float* %t2059, float %t1132, i32 %t1133)
  ret i32 %t1131
B2024:                               	; preds = %B2023
  %t1051 = load i32, i32* %t2022, align 4
  %t1052 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 %t1051
  %t2029 = load i32, i32* %t1052, align 4
  %t1056 = sitofp i32 %t2029 to float
  %t1053 = load i32, i32* %t2022, align 4
  %t1054 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 %t1053
  %t2030 = load float, float* %t1054, align 4
  %t1055 = fsub float %t1056, %t2030
  %t1057 = fptosi float %t1055 to i32
  %t1049 = load i32, i32* %t2022, align 4
  %t1050 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 %t1049
  store i32 %t1057, i32* %t1050, align 4
  %t1059 = load i32, i32* %t2022, align 4
  %t1060 = add i32 %t1059, 1
  store i32 %t1060, i32* %t2022, align 4
  br label %B2023
B2028:                               	; preds = %B2023
  br label %B2025
B2025:                               	; preds = %B2028
  %t1061 = load i32, i32* @k, align 4
  %t1062 = getelementptr inbounds [10 x i32], [10 x i32]* %t1977, i32 0, i32 %t1061
  %t2031 = load i32, i32* %t1062, align 4
  %t1065 = sitofp i32 %t2031 to float
  %t1063 = getelementptr inbounds [10 x float], [10 x float]* %t1936, i32 0, i32 8
  %t2032 = load float, float* %t1063, align 4
  %t1064 = fmul float %t1065, %t2032
  %t1066 = fptosi float %t1064 to i32
  ret i32 %t1066
}
define i32 @main() {
B2060:
  %t2061 = alloca [40 x [3 x float]], align 4
  %t2062 = alloca [24 x [3 x i32]], align 4
  %t2063 = alloca i32, align 4
  %t2080 = alloca float, align 4
  %t2161 = alloca float, align 4
  %t2290 = alloca float, align 4
  %t2371 = alloca i32, align 4
  %t1138 = call i32 @getint()
  store i32 %t1138, i32* @k, align 4
  store i32 0, i32* %t2063, align 4
  br label %B2064
B2064:                               	; preds = %B2060, %B2065
  %t1140 = load i32, i32* %t2063, align 4
  %t1141 = icmp slt i32 %t1140, 40
  br i1 %t1141, label %B2065, label %B2069
B2065:                               	; preds = %B2064
  %t1142 = load i32, i32* %t2063, align 4
  %t1143 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 %t1142
  %t2071 = getelementptr inbounds [3 x float], [3 x float]* %t1143, i32 0, i32 0
  %t1144 = call i32 @getfarray(float* %t2071)
  %t1146 = load i32, i32* %t2063, align 4
  %t1147 = add i32 %t1146, 1
  store i32 %t1147, i32* %t2063, align 4
  br label %B2064
B2069:                               	; preds = %B2064
  br label %B2066
B2066:                               	; preds = %B2069
  store i32 0, i32* %t2063, align 4
  br label %B2072
B2072:                               	; preds = %B2066, %B2073
  %t1149 = load i32, i32* %t2063, align 4
  %t1150 = icmp slt i32 %t1149, 24
  br i1 %t1150, label %B2073, label %B2077
B2073:                               	; preds = %B2072
  %t1151 = load i32, i32* %t2063, align 4
  %t1152 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 %t1151
  %t2079 = getelementptr inbounds [3 x i32], [3 x i32]* %t1152, i32 0, i32 0
  %t1153 = call i32 @getarray(i32* %t2079)
  %t1155 = load i32, i32* %t2063, align 4
  %t1156 = add i32 %t1155, 1
  store i32 %t1156, i32* %t2063, align 4
  br label %B2072
B2077:                               	; preds = %B2072
  br label %B2074
B2074:                               	; preds = %B2077
  %t1158 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 0
  %t1157 = load i32, i32* @k, align 4
  %t2081 = getelementptr inbounds [3 x float], [3 x float]* %t1158, i32 0, i32 %t1157
  %t2082 = load float, float* %t2081, align 4
  %t1160 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 1
  %t1159 = load i32, i32* @k, align 4
  %t2083 = getelementptr inbounds [3 x float], [3 x float]* %t1160, i32 0, i32 %t1159
  %t2084 = load float, float* %t2083, align 4
  %t1162 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 2
  %t1161 = load i32, i32* @k, align 4
  %t2085 = getelementptr inbounds [3 x float], [3 x float]* %t1162, i32 0, i32 %t1161
  %t2086 = load float, float* %t2085, align 4
  %t1164 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 3
  %t1163 = load i32, i32* @k, align 4
  %t2087 = getelementptr inbounds [3 x float], [3 x float]* %t1164, i32 0, i32 %t1163
  %t2088 = load float, float* %t2087, align 4
  %t1166 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 4
  %t1165 = load i32, i32* @k, align 4
  %t2089 = getelementptr inbounds [3 x float], [3 x float]* %t1166, i32 0, i32 %t1165
  %t2090 = load float, float* %t2089, align 4
  %t1168 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 5
  %t1167 = load i32, i32* @k, align 4
  %t2091 = getelementptr inbounds [3 x float], [3 x float]* %t1168, i32 0, i32 %t1167
  %t2092 = load float, float* %t2091, align 4
  %t1170 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 6
  %t1169 = load i32, i32* @k, align 4
  %t2093 = getelementptr inbounds [3 x float], [3 x float]* %t1170, i32 0, i32 %t1169
  %t2094 = load float, float* %t2093, align 4
  %t1172 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 7
  %t1171 = load i32, i32* @k, align 4
  %t2095 = getelementptr inbounds [3 x float], [3 x float]* %t1172, i32 0, i32 %t1171
  %t2096 = load float, float* %t2095, align 4
  %t1174 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 8
  %t1173 = load i32, i32* @k, align 4
  %t2097 = getelementptr inbounds [3 x float], [3 x float]* %t1174, i32 0, i32 %t1173
  %t2098 = load float, float* %t2097, align 4
  %t1176 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 9
  %t1175 = load i32, i32* @k, align 4
  %t2099 = getelementptr inbounds [3 x float], [3 x float]* %t1176, i32 0, i32 %t1175
  %t2100 = load float, float* %t2099, align 4
  %t1178 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 10
  %t1177 = load i32, i32* @k, align 4
  %t2101 = getelementptr inbounds [3 x float], [3 x float]* %t1178, i32 0, i32 %t1177
  %t2102 = load float, float* %t2101, align 4
  %t1180 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 11
  %t1179 = load i32, i32* @k, align 4
  %t2103 = getelementptr inbounds [3 x float], [3 x float]* %t1180, i32 0, i32 %t1179
  %t2104 = load float, float* %t2103, align 4
  %t1182 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 12
  %t1181 = load i32, i32* @k, align 4
  %t2105 = getelementptr inbounds [3 x float], [3 x float]* %t1182, i32 0, i32 %t1181
  %t2106 = load float, float* %t2105, align 4
  %t1184 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 13
  %t1183 = load i32, i32* @k, align 4
  %t2107 = getelementptr inbounds [3 x float], [3 x float]* %t1184, i32 0, i32 %t1183
  %t2108 = load float, float* %t2107, align 4
  %t1186 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 14
  %t1185 = load i32, i32* @k, align 4
  %t2109 = getelementptr inbounds [3 x float], [3 x float]* %t1186, i32 0, i32 %t1185
  %t2110 = load float, float* %t2109, align 4
  %t1188 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 15
  %t1187 = load i32, i32* @k, align 4
  %t2111 = getelementptr inbounds [3 x float], [3 x float]* %t1188, i32 0, i32 %t1187
  %t2112 = load float, float* %t2111, align 4
  %t1190 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 16
  %t1189 = load i32, i32* @k, align 4
  %t2113 = getelementptr inbounds [3 x float], [3 x float]* %t1190, i32 0, i32 %t1189
  %t2114 = load float, float* %t2113, align 4
  %t1192 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 17
  %t1191 = load i32, i32* @k, align 4
  %t2115 = getelementptr inbounds [3 x float], [3 x float]* %t1192, i32 0, i32 %t1191
  %t2116 = load float, float* %t2115, align 4
  %t1194 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 18
  %t1193 = load i32, i32* @k, align 4
  %t2117 = getelementptr inbounds [3 x float], [3 x float]* %t1194, i32 0, i32 %t1193
  %t2118 = load float, float* %t2117, align 4
  %t1196 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 19
  %t1195 = load i32, i32* @k, align 4
  %t2119 = getelementptr inbounds [3 x float], [3 x float]* %t1196, i32 0, i32 %t1195
  %t2120 = load float, float* %t2119, align 4
  %t1198 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 20
  %t1197 = load i32, i32* @k, align 4
  %t2121 = getelementptr inbounds [3 x float], [3 x float]* %t1198, i32 0, i32 %t1197
  %t2122 = load float, float* %t2121, align 4
  %t1200 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 21
  %t1199 = load i32, i32* @k, align 4
  %t2123 = getelementptr inbounds [3 x float], [3 x float]* %t1200, i32 0, i32 %t1199
  %t2124 = load float, float* %t2123, align 4
  %t1202 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 22
  %t1201 = load i32, i32* @k, align 4
  %t2125 = getelementptr inbounds [3 x float], [3 x float]* %t1202, i32 0, i32 %t1201
  %t2126 = load float, float* %t2125, align 4
  %t1204 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 23
  %t1203 = load i32, i32* @k, align 4
  %t2127 = getelementptr inbounds [3 x float], [3 x float]* %t1204, i32 0, i32 %t1203
  %t2128 = load float, float* %t2127, align 4
  %t1206 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 24
  %t1205 = load i32, i32* @k, align 4
  %t2129 = getelementptr inbounds [3 x float], [3 x float]* %t1206, i32 0, i32 %t1205
  %t2130 = load float, float* %t2129, align 4
  %t1208 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 25
  %t1207 = load i32, i32* @k, align 4
  %t2131 = getelementptr inbounds [3 x float], [3 x float]* %t1208, i32 0, i32 %t1207
  %t2132 = load float, float* %t2131, align 4
  %t1210 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 26
  %t1209 = load i32, i32* @k, align 4
  %t2133 = getelementptr inbounds [3 x float], [3 x float]* %t1210, i32 0, i32 %t1209
  %t2134 = load float, float* %t2133, align 4
  %t1212 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 27
  %t1211 = load i32, i32* @k, align 4
  %t2135 = getelementptr inbounds [3 x float], [3 x float]* %t1212, i32 0, i32 %t1211
  %t2136 = load float, float* %t2135, align 4
  %t1214 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 28
  %t1213 = load i32, i32* @k, align 4
  %t2137 = getelementptr inbounds [3 x float], [3 x float]* %t1214, i32 0, i32 %t1213
  %t2138 = load float, float* %t2137, align 4
  %t1216 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 29
  %t1215 = load i32, i32* @k, align 4
  %t2139 = getelementptr inbounds [3 x float], [3 x float]* %t1216, i32 0, i32 %t1215
  %t2140 = load float, float* %t2139, align 4
  %t1218 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 30
  %t1217 = load i32, i32* @k, align 4
  %t2141 = getelementptr inbounds [3 x float], [3 x float]* %t1218, i32 0, i32 %t1217
  %t2142 = load float, float* %t2141, align 4
  %t1220 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 31
  %t1219 = load i32, i32* @k, align 4
  %t2143 = getelementptr inbounds [3 x float], [3 x float]* %t1220, i32 0, i32 %t1219
  %t2144 = load float, float* %t2143, align 4
  %t1222 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 32
  %t1221 = load i32, i32* @k, align 4
  %t2145 = getelementptr inbounds [3 x float], [3 x float]* %t1222, i32 0, i32 %t1221
  %t2146 = load float, float* %t2145, align 4
  %t1224 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 33
  %t1223 = load i32, i32* @k, align 4
  %t2147 = getelementptr inbounds [3 x float], [3 x float]* %t1224, i32 0, i32 %t1223
  %t2148 = load float, float* %t2147, align 4
  %t1226 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 34
  %t1225 = load i32, i32* @k, align 4
  %t2149 = getelementptr inbounds [3 x float], [3 x float]* %t1226, i32 0, i32 %t1225
  %t2150 = load float, float* %t2149, align 4
  %t1228 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 35
  %t1227 = load i32, i32* @k, align 4
  %t2151 = getelementptr inbounds [3 x float], [3 x float]* %t1228, i32 0, i32 %t1227
  %t2152 = load float, float* %t2151, align 4
  %t1230 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 36
  %t1229 = load i32, i32* @k, align 4
  %t2153 = getelementptr inbounds [3 x float], [3 x float]* %t1230, i32 0, i32 %t1229
  %t2154 = load float, float* %t2153, align 4
  %t1232 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 37
  %t1231 = load i32, i32* @k, align 4
  %t2155 = getelementptr inbounds [3 x float], [3 x float]* %t1232, i32 0, i32 %t1231
  %t2156 = load float, float* %t2155, align 4
  %t1234 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 38
  %t1233 = load i32, i32* @k, align 4
  %t2157 = getelementptr inbounds [3 x float], [3 x float]* %t1234, i32 0, i32 %t1233
  %t2158 = load float, float* %t2157, align 4
  %t1236 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 39
  %t1235 = load i32, i32* @k, align 4
  %t2159 = getelementptr inbounds [3 x float], [3 x float]* %t1236, i32 0, i32 %t1235
  %t2160 = load float, float* %t2159, align 4
  %t1237 = call float @params_f40(float %t2082, float %t2084, float %t2086, float %t2088, float %t2090, float %t2092, float %t2094, float %t2096, float %t2098, float %t2100, float %t2102, float %t2104, float %t2106, float %t2108, float %t2110, float %t2112, float %t2114, float %t2116, float %t2118, float %t2120, float %t2122, float %t2124, float %t2126, float %t2128, float %t2130, float %t2132, float %t2134, float %t2136, float %t2138, float %t2140, float %t2142, float %t2144, float %t2146, float %t2148, float %t2150, float %t2152, float %t2154, float %t2156, float %t2158, float %t2160)
  store float %t1237, float* %t2080, align 4
  %t1240 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 23
  %t1239 = load i32, i32* @k, align 4
  %t2162 = getelementptr inbounds [3 x i32], [3 x i32]* %t1240, i32 0, i32 %t1239
  %t2163 = load i32, i32* %t2162, align 4
  %t1242 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 2
  %t1241 = load i32, i32* @k, align 4
  %t2164 = getelementptr inbounds [3 x i32], [3 x i32]* %t1242, i32 0, i32 %t1241
  %t2165 = load i32, i32* %t2164, align 4
  %t1244 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 6
  %t1243 = load i32, i32* @k, align 4
  %t2166 = getelementptr inbounds [3 x i32], [3 x i32]* %t1244, i32 0, i32 %t1243
  %t2167 = load i32, i32* %t2166, align 4
  %t1246 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 4
  %t1245 = load i32, i32* @k, align 4
  %t2168 = getelementptr inbounds [3 x float], [3 x float]* %t1246, i32 0, i32 %t1245
  %t2169 = load float, float* %t2168, align 4
  %t1248 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 1
  %t1247 = load i32, i32* @k, align 4
  %t2170 = getelementptr inbounds [3 x i32], [3 x i32]* %t1248, i32 0, i32 %t1247
  %t2171 = load i32, i32* %t2170, align 4
  %t1250 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 4
  %t1249 = load i32, i32* @k, align 4
  %t2172 = getelementptr inbounds [3 x i32], [3 x i32]* %t1250, i32 0, i32 %t1249
  %t2173 = load i32, i32* %t2172, align 4
  %t1252 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 5
  %t1251 = load i32, i32* @k, align 4
  %t2174 = getelementptr inbounds [3 x i32], [3 x i32]* %t1252, i32 0, i32 %t1251
  %t2175 = load i32, i32* %t2174, align 4
  %t1254 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 8
  %t1253 = load i32, i32* @k, align 4
  %t2176 = getelementptr inbounds [3 x float], [3 x float]* %t1254, i32 0, i32 %t1253
  %t2177 = load float, float* %t2176, align 4
  %t1256 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 15
  %t1255 = load i32, i32* @k, align 4
  %t2178 = getelementptr inbounds [3 x float], [3 x float]* %t1256, i32 0, i32 %t1255
  %t2179 = load float, float* %t2178, align 4
  %t1258 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 7
  %t1257 = load i32, i32* @k, align 4
  %t2180 = getelementptr inbounds [3 x float], [3 x float]* %t1258, i32 0, i32 %t1257
  %t2181 = load float, float* %t2180, align 4
  %t1260 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 22
  %t1259 = load i32, i32* @k, align 4
  %t2182 = getelementptr inbounds [3 x i32], [3 x i32]* %t1260, i32 0, i32 %t1259
  %t2183 = load i32, i32* %t2182, align 4
  %t1262 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 3
  %t1261 = load i32, i32* @k, align 4
  %t2184 = getelementptr inbounds [3 x float], [3 x float]* %t1262, i32 0, i32 %t1261
  %t2185 = load float, float* %t2184, align 4
  %t1264 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 28
  %t1263 = load i32, i32* @k, align 4
  %t2186 = getelementptr inbounds [3 x float], [3 x float]* %t1264, i32 0, i32 %t1263
  %t2187 = load float, float* %t2186, align 4
  %t1266 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 0
  %t1265 = load i32, i32* @k, align 4
  %t2188 = getelementptr inbounds [3 x i32], [3 x i32]* %t1266, i32 0, i32 %t1265
  %t2189 = load i32, i32* %t2188, align 4
  %t1268 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 37
  %t1267 = load i32, i32* @k, align 4
  %t2190 = getelementptr inbounds [3 x float], [3 x float]* %t1268, i32 0, i32 %t1267
  %t2191 = load float, float* %t2190, align 4
  %t1270 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 19
  %t1269 = load i32, i32* @k, align 4
  %t2192 = getelementptr inbounds [3 x i32], [3 x i32]* %t1270, i32 0, i32 %t1269
  %t2193 = load i32, i32* %t2192, align 4
  %t1272 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 30
  %t1271 = load i32, i32* @k, align 4
  %t2194 = getelementptr inbounds [3 x float], [3 x float]* %t1272, i32 0, i32 %t1271
  %t2195 = load float, float* %t2194, align 4
  %t1274 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 12
  %t1273 = load i32, i32* @k, align 4
  %t2196 = getelementptr inbounds [3 x float], [3 x float]* %t1274, i32 0, i32 %t1273
  %t2197 = load float, float* %t2196, align 4
  %t1276 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 1
  %t1275 = load i32, i32* @k, align 4
  %t2198 = getelementptr inbounds [3 x float], [3 x float]* %t1276, i32 0, i32 %t1275
  %t2199 = load float, float* %t2198, align 4
  %t1278 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 11
  %t1277 = load i32, i32* @k, align 4
  %t2200 = getelementptr inbounds [3 x float], [3 x float]* %t1278, i32 0, i32 %t1277
  %t2201 = load float, float* %t2200, align 4
  %t1280 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 38
  %t1279 = load i32, i32* @k, align 4
  %t2202 = getelementptr inbounds [3 x float], [3 x float]* %t1280, i32 0, i32 %t1279
  %t2203 = load float, float* %t2202, align 4
  %t1282 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 6
  %t1281 = load i32, i32* @k, align 4
  %t2204 = getelementptr inbounds [3 x float], [3 x float]* %t1282, i32 0, i32 %t1281
  %t2205 = load float, float* %t2204, align 4
  %t1284 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 7
  %t1283 = load i32, i32* @k, align 4
  %t2206 = getelementptr inbounds [3 x i32], [3 x i32]* %t1284, i32 0, i32 %t1283
  %t2207 = load i32, i32* %t2206, align 4
  %t1286 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 32
  %t1285 = load i32, i32* @k, align 4
  %t2208 = getelementptr inbounds [3 x float], [3 x float]* %t1286, i32 0, i32 %t1285
  %t2209 = load float, float* %t2208, align 4
  %t1288 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 10
  %t1287 = load i32, i32* @k, align 4
  %t2210 = getelementptr inbounds [3 x i32], [3 x i32]* %t1288, i32 0, i32 %t1287
  %t2211 = load i32, i32* %t2210, align 4
  %t1290 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 13
  %t1289 = load i32, i32* @k, align 4
  %t2212 = getelementptr inbounds [3 x i32], [3 x i32]* %t1290, i32 0, i32 %t1289
  %t2213 = load i32, i32* %t2212, align 4
  %t1292 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 20
  %t1291 = load i32, i32* @k, align 4
  %t2214 = getelementptr inbounds [3 x float], [3 x float]* %t1292, i32 0, i32 %t1291
  %t2215 = load float, float* %t2214, align 4
  %t1294 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 33
  %t1293 = load i32, i32* @k, align 4
  %t2216 = getelementptr inbounds [3 x float], [3 x float]* %t1294, i32 0, i32 %t1293
  %t2217 = load float, float* %t2216, align 4
  %t1296 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 23
  %t1295 = load i32, i32* @k, align 4
  %t2218 = getelementptr inbounds [3 x float], [3 x float]* %t1296, i32 0, i32 %t1295
  %t2219 = load float, float* %t2218, align 4
  %t1298 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 9
  %t1297 = load i32, i32* @k, align 4
  %t2220 = getelementptr inbounds [3 x float], [3 x float]* %t1298, i32 0, i32 %t1297
  %t2221 = load float, float* %t2220, align 4
  %t1300 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 25
  %t1299 = load i32, i32* @k, align 4
  %t2222 = getelementptr inbounds [3 x float], [3 x float]* %t1300, i32 0, i32 %t1299
  %t2223 = load float, float* %t2222, align 4
  %t1302 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 8
  %t1301 = load i32, i32* @k, align 4
  %t2224 = getelementptr inbounds [3 x i32], [3 x i32]* %t1302, i32 0, i32 %t1301
  %t2225 = load i32, i32* %t2224, align 4
  %t1304 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 39
  %t1303 = load i32, i32* @k, align 4
  %t2226 = getelementptr inbounds [3 x float], [3 x float]* %t1304, i32 0, i32 %t1303
  %t2227 = load float, float* %t2226, align 4
  %t1306 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 17
  %t1305 = load i32, i32* @k, align 4
  %t2228 = getelementptr inbounds [3 x i32], [3 x i32]* %t1306, i32 0, i32 %t1305
  %t2229 = load i32, i32* %t2228, align 4
  %t1308 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 21
  %t1307 = load i32, i32* @k, align 4
  %t2230 = getelementptr inbounds [3 x float], [3 x float]* %t1308, i32 0, i32 %t1307
  %t2231 = load float, float* %t2230, align 4
  %t1310 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 16
  %t1309 = load i32, i32* @k, align 4
  %t2232 = getelementptr inbounds [3 x float], [3 x float]* %t1310, i32 0, i32 %t1309
  %t2233 = load float, float* %t2232, align 4
  %t1312 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 5
  %t1311 = load i32, i32* @k, align 4
  %t2234 = getelementptr inbounds [3 x float], [3 x float]* %t1312, i32 0, i32 %t1311
  %t2235 = load float, float* %t2234, align 4
  %t1314 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 34
  %t1313 = load i32, i32* @k, align 4
  %t2236 = getelementptr inbounds [3 x float], [3 x float]* %t1314, i32 0, i32 %t1313
  %t2237 = load float, float* %t2236, align 4
  %t1316 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 18
  %t1315 = load i32, i32* @k, align 4
  %t2238 = getelementptr inbounds [3 x i32], [3 x i32]* %t1316, i32 0, i32 %t1315
  %t2239 = load i32, i32* %t2238, align 4
  %t1318 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 9
  %t1317 = load i32, i32* @k, align 4
  %t2240 = getelementptr inbounds [3 x i32], [3 x i32]* %t1318, i32 0, i32 %t1317
  %t2241 = load i32, i32* %t2240, align 4
  %t1320 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 14
  %t1319 = load i32, i32* @k, align 4
  %t2242 = getelementptr inbounds [3 x float], [3 x float]* %t1320, i32 0, i32 %t1319
  %t2243 = load float, float* %t2242, align 4
  %t1322 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 10
  %t1321 = load i32, i32* @k, align 4
  %t2244 = getelementptr inbounds [3 x float], [3 x float]* %t1322, i32 0, i32 %t1321
  %t2245 = load float, float* %t2244, align 4
  %t1324 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 0
  %t1323 = load i32, i32* @k, align 4
  %t2246 = getelementptr inbounds [3 x float], [3 x float]* %t1324, i32 0, i32 %t1323
  %t2247 = load float, float* %t2246, align 4
  %t1326 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 12
  %t1325 = load i32, i32* @k, align 4
  %t2248 = getelementptr inbounds [3 x i32], [3 x i32]* %t1326, i32 0, i32 %t1325
  %t2249 = load i32, i32* %t2248, align 4
  %t1328 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 31
  %t1327 = load i32, i32* @k, align 4
  %t2250 = getelementptr inbounds [3 x float], [3 x float]* %t1328, i32 0, i32 %t1327
  %t2251 = load float, float* %t2250, align 4
  %t1330 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 11
  %t1329 = load i32, i32* @k, align 4
  %t2252 = getelementptr inbounds [3 x i32], [3 x i32]* %t1330, i32 0, i32 %t1329
  %t2253 = load i32, i32* %t2252, align 4
  %t1332 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 16
  %t1331 = load i32, i32* @k, align 4
  %t2254 = getelementptr inbounds [3 x i32], [3 x i32]* %t1332, i32 0, i32 %t1331
  %t2255 = load i32, i32* %t2254, align 4
  %t1334 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 27
  %t1333 = load i32, i32* @k, align 4
  %t2256 = getelementptr inbounds [3 x float], [3 x float]* %t1334, i32 0, i32 %t1333
  %t2257 = load float, float* %t2256, align 4
  %t1336 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 24
  %t1335 = load i32, i32* @k, align 4
  %t2258 = getelementptr inbounds [3 x float], [3 x float]* %t1336, i32 0, i32 %t1335
  %t2259 = load float, float* %t2258, align 4
  %t1338 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 13
  %t1337 = load i32, i32* @k, align 4
  %t2260 = getelementptr inbounds [3 x float], [3 x float]* %t1338, i32 0, i32 %t1337
  %t2261 = load float, float* %t2260, align 4
  %t1340 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 29
  %t1339 = load i32, i32* @k, align 4
  %t2262 = getelementptr inbounds [3 x float], [3 x float]* %t1340, i32 0, i32 %t1339
  %t2263 = load float, float* %t2262, align 4
  %t1342 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 3
  %t1341 = load i32, i32* @k, align 4
  %t2264 = getelementptr inbounds [3 x i32], [3 x i32]* %t1342, i32 0, i32 %t1341
  %t2265 = load i32, i32* %t2264, align 4
  %t1344 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 21
  %t1343 = load i32, i32* @k, align 4
  %t2266 = getelementptr inbounds [3 x i32], [3 x i32]* %t1344, i32 0, i32 %t1343
  %t2267 = load i32, i32* %t2266, align 4
  %t1346 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 20
  %t1345 = load i32, i32* @k, align 4
  %t2268 = getelementptr inbounds [3 x i32], [3 x i32]* %t1346, i32 0, i32 %t1345
  %t2269 = load i32, i32* %t2268, align 4
  %t1348 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 18
  %t1347 = load i32, i32* @k, align 4
  %t2270 = getelementptr inbounds [3 x float], [3 x float]* %t1348, i32 0, i32 %t1347
  %t2271 = load float, float* %t2270, align 4
  %t1350 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 19
  %t1349 = load i32, i32* @k, align 4
  %t2272 = getelementptr inbounds [3 x float], [3 x float]* %t1350, i32 0, i32 %t1349
  %t2273 = load float, float* %t2272, align 4
  %t1352 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 22
  %t1351 = load i32, i32* @k, align 4
  %t2274 = getelementptr inbounds [3 x float], [3 x float]* %t1352, i32 0, i32 %t1351
  %t2275 = load float, float* %t2274, align 4
  %t1354 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 26
  %t1353 = load i32, i32* @k, align 4
  %t2276 = getelementptr inbounds [3 x float], [3 x float]* %t1354, i32 0, i32 %t1353
  %t2277 = load float, float* %t2276, align 4
  %t1356 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 36
  %t1355 = load i32, i32* @k, align 4
  %t2278 = getelementptr inbounds [3 x float], [3 x float]* %t1356, i32 0, i32 %t1355
  %t2279 = load float, float* %t2278, align 4
  %t1358 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 17
  %t1357 = load i32, i32* @k, align 4
  %t2280 = getelementptr inbounds [3 x float], [3 x float]* %t1358, i32 0, i32 %t1357
  %t2281 = load float, float* %t2280, align 4
  %t1360 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 15
  %t1359 = load i32, i32* @k, align 4
  %t2282 = getelementptr inbounds [3 x i32], [3 x i32]* %t1360, i32 0, i32 %t1359
  %t2283 = load i32, i32* %t2282, align 4
  %t1362 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 2
  %t1361 = load i32, i32* @k, align 4
  %t2284 = getelementptr inbounds [3 x float], [3 x float]* %t1362, i32 0, i32 %t1361
  %t2285 = load float, float* %t2284, align 4
  %t1364 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 14
  %t1363 = load i32, i32* @k, align 4
  %t2286 = getelementptr inbounds [3 x i32], [3 x i32]* %t1364, i32 0, i32 %t1363
  %t2287 = load i32, i32* %t2286, align 4
  %t1366 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 35
  %t1365 = load i32, i32* @k, align 4
  %t2288 = getelementptr inbounds [3 x float], [3 x float]* %t1366, i32 0, i32 %t1365
  %t2289 = load float, float* %t2288, align 4
  %t1367 = call float @params_f40_i24(i32 %t2163, i32 %t2165, i32 %t2167, float %t2169, i32 %t2171, i32 %t2173, i32 %t2175, float %t2177, float %t2179, float %t2181, i32 %t2183, float %t2185, float %t2187, i32 %t2189, float %t2191, i32 %t2193, float %t2195, float %t2197, float %t2199, float %t2201, float %t2203, float %t2205, i32 %t2207, float %t2209, i32 %t2211, i32 %t2213, float %t2215, float %t2217, float %t2219, float %t2221, float %t2223, i32 %t2225, float %t2227, i32 %t2229, float %t2231, float %t2233, float %t2235, float %t2237, i32 %t2239, i32 %t2241, float %t2243, float %t2245, float %t2247, i32 %t2249, float %t2251, i32 %t2253, i32 %t2255, float %t2257, float %t2259, float %t2261, float %t2263, i32 %t2265, i32 %t2267, i32 %t2269, float %t2271, float %t2273, float %t2275, float %t2277, float %t2279, float %t2281, i32 %t2283, float %t2285, i32 %t2287, float %t2289)
  store float %t1367, float* %t2161, align 4
  %t1369 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 0
  %t2292 = getelementptr inbounds [3 x float], [3 x float]* %t1369, i32 0, i32 0
  %t1370 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 1
  %t2294 = getelementptr inbounds [3 x float], [3 x float]* %t1370, i32 0, i32 0
  %t1371 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 2
  %t2296 = getelementptr inbounds [3 x float], [3 x float]* %t1371, i32 0, i32 0
  %t1372 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 3
  %t2298 = getelementptr inbounds [3 x float], [3 x float]* %t1372, i32 0, i32 0
  %t1373 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 4
  %t2300 = getelementptr inbounds [3 x float], [3 x float]* %t1373, i32 0, i32 0
  %t1374 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 5
  %t2302 = getelementptr inbounds [3 x float], [3 x float]* %t1374, i32 0, i32 0
  %t1375 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 6
  %t2304 = getelementptr inbounds [3 x float], [3 x float]* %t1375, i32 0, i32 0
  %t1376 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 7
  %t2306 = getelementptr inbounds [3 x float], [3 x float]* %t1376, i32 0, i32 0
  %t1377 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 8
  %t2308 = getelementptr inbounds [3 x float], [3 x float]* %t1377, i32 0, i32 0
  %t1378 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 9
  %t2310 = getelementptr inbounds [3 x float], [3 x float]* %t1378, i32 0, i32 0
  %t1379 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 10
  %t2312 = getelementptr inbounds [3 x float], [3 x float]* %t1379, i32 0, i32 0
  %t1380 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 11
  %t2314 = getelementptr inbounds [3 x float], [3 x float]* %t1380, i32 0, i32 0
  %t1381 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 12
  %t2316 = getelementptr inbounds [3 x float], [3 x float]* %t1381, i32 0, i32 0
  %t1382 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 13
  %t2318 = getelementptr inbounds [3 x float], [3 x float]* %t1382, i32 0, i32 0
  %t1383 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 14
  %t2320 = getelementptr inbounds [3 x float], [3 x float]* %t1383, i32 0, i32 0
  %t1384 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 15
  %t2322 = getelementptr inbounds [3 x float], [3 x float]* %t1384, i32 0, i32 0
  %t1385 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 16
  %t2324 = getelementptr inbounds [3 x float], [3 x float]* %t1385, i32 0, i32 0
  %t1386 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 17
  %t2326 = getelementptr inbounds [3 x float], [3 x float]* %t1386, i32 0, i32 0
  %t1387 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 18
  %t2328 = getelementptr inbounds [3 x float], [3 x float]* %t1387, i32 0, i32 0
  %t1388 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 19
  %t2330 = getelementptr inbounds [3 x float], [3 x float]* %t1388, i32 0, i32 0
  %t1389 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 20
  %t2332 = getelementptr inbounds [3 x float], [3 x float]* %t1389, i32 0, i32 0
  %t1390 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 21
  %t2334 = getelementptr inbounds [3 x float], [3 x float]* %t1390, i32 0, i32 0
  %t1391 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 22
  %t2336 = getelementptr inbounds [3 x float], [3 x float]* %t1391, i32 0, i32 0
  %t1392 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 23
  %t2338 = getelementptr inbounds [3 x float], [3 x float]* %t1392, i32 0, i32 0
  %t1393 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 24
  %t2340 = getelementptr inbounds [3 x float], [3 x float]* %t1393, i32 0, i32 0
  %t1394 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 25
  %t2342 = getelementptr inbounds [3 x float], [3 x float]* %t1394, i32 0, i32 0
  %t1395 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 26
  %t2344 = getelementptr inbounds [3 x float], [3 x float]* %t1395, i32 0, i32 0
  %t1396 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 27
  %t2346 = getelementptr inbounds [3 x float], [3 x float]* %t1396, i32 0, i32 0
  %t1397 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 28
  %t2348 = getelementptr inbounds [3 x float], [3 x float]* %t1397, i32 0, i32 0
  %t1398 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 29
  %t2350 = getelementptr inbounds [3 x float], [3 x float]* %t1398, i32 0, i32 0
  %t1399 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 30
  %t2352 = getelementptr inbounds [3 x float], [3 x float]* %t1399, i32 0, i32 0
  %t1400 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 31
  %t2354 = getelementptr inbounds [3 x float], [3 x float]* %t1400, i32 0, i32 0
  %t1401 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 32
  %t2356 = getelementptr inbounds [3 x float], [3 x float]* %t1401, i32 0, i32 0
  %t1402 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 33
  %t2358 = getelementptr inbounds [3 x float], [3 x float]* %t1402, i32 0, i32 0
  %t1403 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 34
  %t2360 = getelementptr inbounds [3 x float], [3 x float]* %t1403, i32 0, i32 0
  %t1404 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 35
  %t2362 = getelementptr inbounds [3 x float], [3 x float]* %t1404, i32 0, i32 0
  %t1405 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 36
  %t2364 = getelementptr inbounds [3 x float], [3 x float]* %t1405, i32 0, i32 0
  %t1406 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 37
  %t2366 = getelementptr inbounds [3 x float], [3 x float]* %t1406, i32 0, i32 0
  %t1407 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 38
  %t2368 = getelementptr inbounds [3 x float], [3 x float]* %t1407, i32 0, i32 0
  %t1408 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 39
  %t2370 = getelementptr inbounds [3 x float], [3 x float]* %t1408, i32 0, i32 0
  %t1409 = call float @params_fa40(float* %t2292, float* %t2294, float* %t2296, float* %t2298, float* %t2300, float* %t2302, float* %t2304, float* %t2306, float* %t2308, float* %t2310, float* %t2312, float* %t2314, float* %t2316, float* %t2318, float* %t2320, float* %t2322, float* %t2324, float* %t2326, float* %t2328, float* %t2330, float* %t2332, float* %t2334, float* %t2336, float* %t2338, float* %t2340, float* %t2342, float* %t2344, float* %t2346, float* %t2348, float* %t2350, float* %t2352, float* %t2354, float* %t2356, float* %t2358, float* %t2360, float* %t2362, float* %t2364, float* %t2366, float* %t2368, float* %t2370)
  store float %t1409, float* %t2290, align 4
  %t1412 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 0
  %t1411 = load i32, i32* @k, align 4
  %t2372 = getelementptr inbounds [3 x float], [3 x float]* %t1412, i32 0, i32 %t1411
  %t2373 = load float, float* %t2372, align 4
  %t1413 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 0
  %t2375 = getelementptr inbounds [3 x i32], [3 x i32]* %t1413, i32 0, i32 0
  %t1415 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 1
  %t1414 = load i32, i32* @k, align 4
  %t2376 = getelementptr inbounds [3 x i32], [3 x i32]* %t1415, i32 0, i32 %t1414
  %t2377 = load i32, i32* %t2376, align 4
  %t1416 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 1
  %t2379 = getelementptr inbounds [3 x float], [3 x float]* %t1416, i32 0, i32 0
  %t1418 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 2
  %t1417 = load i32, i32* @k, align 4
  %t2380 = getelementptr inbounds [3 x float], [3 x float]* %t1418, i32 0, i32 %t1417
  %t2381 = load float, float* %t2380, align 4
  %t1420 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 2
  %t1419 = load i32, i32* @k, align 4
  %t2382 = getelementptr inbounds [3 x i32], [3 x i32]* %t1420, i32 0, i32 %t1419
  %t2383 = load i32, i32* %t2382, align 4
  %t1422 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 3
  %t1421 = load i32, i32* @k, align 4
  %t2384 = getelementptr inbounds [3 x float], [3 x float]* %t1422, i32 0, i32 %t1421
  %t2385 = load float, float* %t2384, align 4
  %t1424 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 4
  %t1423 = load i32, i32* @k, align 4
  %t2386 = getelementptr inbounds [3 x float], [3 x float]* %t1424, i32 0, i32 %t1423
  %t2387 = load float, float* %t2386, align 4
  %t1425 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 5
  %t2389 = getelementptr inbounds [3 x float], [3 x float]* %t1425, i32 0, i32 0
  %t1426 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 3
  %t2391 = getelementptr inbounds [3 x i32], [3 x i32]* %t1426, i32 0, i32 0
  %t1428 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 4
  %t1427 = load i32, i32* @k, align 4
  %t2392 = getelementptr inbounds [3 x i32], [3 x i32]* %t1428, i32 0, i32 %t1427
  %t2393 = load i32, i32* %t2392, align 4
  %t1430 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 5
  %t1429 = load i32, i32* @k, align 4
  %t2394 = getelementptr inbounds [3 x i32], [3 x i32]* %t1430, i32 0, i32 %t1429
  %t2395 = load i32, i32* %t2394, align 4
  %t1431 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 6
  %t2397 = getelementptr inbounds [3 x float], [3 x float]* %t1431, i32 0, i32 0
  %t1432 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 6
  %t2399 = getelementptr inbounds [3 x i32], [3 x i32]* %t1432, i32 0, i32 0
  %t1433 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 7
  %t2401 = getelementptr inbounds [3 x i32], [3 x i32]* %t1433, i32 0, i32 0
  %t1435 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 8
  %t1434 = load i32, i32* @k, align 4
  %t2402 = getelementptr inbounds [3 x i32], [3 x i32]* %t1435, i32 0, i32 %t1434
  %t2403 = load i32, i32* %t2402, align 4
  %t1436 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 7
  %t2405 = getelementptr inbounds [3 x float], [3 x float]* %t1436, i32 0, i32 0
  %t1437 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 8
  %t2407 = getelementptr inbounds [3 x float], [3 x float]* %t1437, i32 0, i32 0
  %t1439 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 9
  %t1438 = load i32, i32* @k, align 4
  %t2408 = getelementptr inbounds [3 x float], [3 x float]* %t1439, i32 0, i32 %t1438
  %t2409 = load float, float* %t2408, align 4
  %t1441 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 10
  %t1440 = load i32, i32* @k, align 4
  %t2410 = getelementptr inbounds [3 x float], [3 x float]* %t1441, i32 0, i32 %t1440
  %t2411 = load float, float* %t2410, align 4
  %t1443 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 11
  %t1442 = load i32, i32* @k, align 4
  %t2412 = getelementptr inbounds [3 x float], [3 x float]* %t1443, i32 0, i32 %t1442
  %t2413 = load float, float* %t2412, align 4
  %t1444 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 12
  %t2415 = getelementptr inbounds [3 x float], [3 x float]* %t1444, i32 0, i32 0
  %t1446 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 9
  %t1445 = load i32, i32* @k, align 4
  %t2416 = getelementptr inbounds [3 x i32], [3 x i32]* %t1446, i32 0, i32 %t1445
  %t2417 = load i32, i32* %t2416, align 4
  %t1448 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 13
  %t1447 = load i32, i32* @k, align 4
  %t2418 = getelementptr inbounds [3 x float], [3 x float]* %t1448, i32 0, i32 %t1447
  %t2419 = load float, float* %t2418, align 4
  %t1450 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 14
  %t1449 = load i32, i32* @k, align 4
  %t2420 = getelementptr inbounds [3 x float], [3 x float]* %t1450, i32 0, i32 %t1449
  %t2421 = load float, float* %t2420, align 4
  %t1452 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 15
  %t1451 = load i32, i32* @k, align 4
  %t2422 = getelementptr inbounds [3 x float], [3 x float]* %t1452, i32 0, i32 %t1451
  %t2423 = load float, float* %t2422, align 4
  %t1453 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 10
  %t2425 = getelementptr inbounds [3 x i32], [3 x i32]* %t1453, i32 0, i32 0
  %t1454 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 16
  %t2427 = getelementptr inbounds [3 x float], [3 x float]* %t1454, i32 0, i32 0
  %t1455 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 11
  %t2429 = getelementptr inbounds [3 x i32], [3 x i32]* %t1455, i32 0, i32 0
  %t1456 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 12
  %t2431 = getelementptr inbounds [3 x i32], [3 x i32]* %t1456, i32 0, i32 0
  %t1457 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 17
  %t2433 = getelementptr inbounds [3 x float], [3 x float]* %t1457, i32 0, i32 0
  %t1459 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 18
  %t1458 = load i32, i32* @k, align 4
  %t2434 = getelementptr inbounds [3 x float], [3 x float]* %t1459, i32 0, i32 %t1458
  %t2435 = load float, float* %t2434, align 4
  %t1461 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 19
  %t1460 = load i32, i32* @k, align 4
  %t2436 = getelementptr inbounds [3 x float], [3 x float]* %t1461, i32 0, i32 %t1460
  %t2437 = load float, float* %t2436, align 4
  %t1462 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 13
  %t2439 = getelementptr inbounds [3 x i32], [3 x i32]* %t1462, i32 0, i32 0
  %t1464 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 14
  %t1463 = load i32, i32* @k, align 4
  %t2440 = getelementptr inbounds [3 x i32], [3 x i32]* %t1464, i32 0, i32 %t1463
  %t2441 = load i32, i32* %t2440, align 4
  %t1465 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 20
  %t2443 = getelementptr inbounds [3 x float], [3 x float]* %t1465, i32 0, i32 0
  %t1466 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 21
  %t2445 = getelementptr inbounds [3 x float], [3 x float]* %t1466, i32 0, i32 0
  %t1468 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 22
  %t1467 = load i32, i32* @k, align 4
  %t2446 = getelementptr inbounds [3 x float], [3 x float]* %t1468, i32 0, i32 %t1467
  %t2447 = load float, float* %t2446, align 4
  %t1470 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 23
  %t1469 = load i32, i32* @k, align 4
  %t2448 = getelementptr inbounds [3 x float], [3 x float]* %t1470, i32 0, i32 %t1469
  %t2449 = load float, float* %t2448, align 4
  %t1471 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 15
  %t2451 = getelementptr inbounds [3 x i32], [3 x i32]* %t1471, i32 0, i32 0
  %t1472 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 16
  %t2453 = getelementptr inbounds [3 x i32], [3 x i32]* %t1472, i32 0, i32 0
  %t1474 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 17
  %t1473 = load i32, i32* @k, align 4
  %t2454 = getelementptr inbounds [3 x i32], [3 x i32]* %t1474, i32 0, i32 %t1473
  %t2455 = load i32, i32* %t2454, align 4
  %t1476 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 18
  %t1475 = load i32, i32* @k, align 4
  %t2456 = getelementptr inbounds [3 x i32], [3 x i32]* %t1476, i32 0, i32 %t1475
  %t2457 = load i32, i32* %t2456, align 4
  %t1478 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 24
  %t1477 = load i32, i32* @k, align 4
  %t2458 = getelementptr inbounds [3 x float], [3 x float]* %t1478, i32 0, i32 %t1477
  %t2459 = load float, float* %t2458, align 4
  %t1480 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 25
  %t1479 = load i32, i32* @k, align 4
  %t2460 = getelementptr inbounds [3 x float], [3 x float]* %t1480, i32 0, i32 %t1479
  %t2461 = load float, float* %t2460, align 4
  %t1481 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 19
  %t2463 = getelementptr inbounds [3 x i32], [3 x i32]* %t1481, i32 0, i32 0
  %t1483 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 20
  %t1482 = load i32, i32* @k, align 4
  %t2464 = getelementptr inbounds [3 x i32], [3 x i32]* %t1483, i32 0, i32 %t1482
  %t2465 = load i32, i32* %t2464, align 4
  %t1484 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 26
  %t2467 = getelementptr inbounds [3 x float], [3 x float]* %t1484, i32 0, i32 0
  %t1486 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 21
  %t1485 = load i32, i32* @k, align 4
  %t2468 = getelementptr inbounds [3 x i32], [3 x i32]* %t1486, i32 0, i32 %t1485
  %t2469 = load i32, i32* %t2468, align 4
  %t1487 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 22
  %t2471 = getelementptr inbounds [3 x i32], [3 x i32]* %t1487, i32 0, i32 0
  %t1488 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 23
  %t2473 = getelementptr inbounds [3 x i32], [3 x i32]* %t1488, i32 0, i32 0
  %t1490 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 27
  %t1489 = load i32, i32* @k, align 4
  %t2474 = getelementptr inbounds [3 x float], [3 x float]* %t1490, i32 0, i32 %t1489
  %t2475 = load float, float* %t2474, align 4
  %t1492 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 28
  %t1491 = load i32, i32* @k, align 4
  %t2476 = getelementptr inbounds [3 x float], [3 x float]* %t1492, i32 0, i32 %t1491
  %t2477 = load float, float* %t2476, align 4
  %t1493 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 29
  %t2479 = getelementptr inbounds [3 x float], [3 x float]* %t1493, i32 0, i32 0
  %t1495 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 0
  %t1494 = load i32, i32* @k, align 4
  %t2480 = getelementptr inbounds [3 x i32], [3 x i32]* %t1495, i32 0, i32 %t1494
  %t2481 = load i32, i32* %t2480, align 4
  %t1496 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 1
  %t2483 = getelementptr inbounds [3 x i32], [3 x i32]* %t1496, i32 0, i32 0
  %t1497 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 30
  %t2485 = getelementptr inbounds [3 x float], [3 x float]* %t1497, i32 0, i32 0
  %t1499 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 31
  %t1498 = load i32, i32* @k, align 4
  %t2486 = getelementptr inbounds [3 x float], [3 x float]* %t1499, i32 0, i32 %t1498
  %t2487 = load float, float* %t2486, align 4
  %t1501 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 2
  %t1500 = load i32, i32* @k, align 4
  %t2488 = getelementptr inbounds [3 x i32], [3 x i32]* %t1501, i32 0, i32 %t1500
  %t2489 = load i32, i32* %t2488, align 4
  %t1503 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 32
  %t1502 = load i32, i32* @k, align 4
  %t2490 = getelementptr inbounds [3 x float], [3 x float]* %t1503, i32 0, i32 %t1502
  %t2491 = load float, float* %t2490, align 4
  %t1504 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 33
  %t2493 = getelementptr inbounds [3 x float], [3 x float]* %t1504, i32 0, i32 0
  %t1505 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 34
  %t2495 = getelementptr inbounds [3 x float], [3 x float]* %t1505, i32 0, i32 0
  %t1507 = getelementptr inbounds [40 x [3 x float]], [40 x [3 x float]]* %t2061, i32 0, i32 35
  %t1506 = load i32, i32* @k, align 4
  %t2496 = getelementptr inbounds [3 x float], [3 x float]* %t1507, i32 0, i32 %t1506
  %t2497 = load float, float* %t2496, align 4
  %t1509 = getelementptr inbounds [24 x [3 x i32]], [24 x [3 x i32]]* %t2062, i32 0, i32 3
  %t1508 = load i32, i32* @k, align 4
  %t2498 = getelementptr inbounds [3 x i32], [3 x i32]* %t1509, i32 0, i32 %t1508
  %t2499 = load i32, i32* %t2498, align 4
  %t1510 = call i32 @params_mix(float %t2373, i32* %t2375, i32 %t2377, float* %t2379, float %t2381, i32 %t2383, float %t2385, float %t2387, float* %t2389, i32* %t2391, i32 %t2393, i32 %t2395, float* %t2397, i32* %t2399, i32* %t2401, i32 %t2403, float* %t2405, float* %t2407, float %t2409, float %t2411, float %t2413, float* %t2415, i32 %t2417, float %t2419, float %t2421, float %t2423, i32* %t2425, float* %t2427, i32* %t2429, i32* %t2431, float* %t2433, float %t2435, float %t2437, i32* %t2439, i32 %t2441, float* %t2443, float* %t2445, float %t2447, float %t2449, i32* %t2451, i32* %t2453, i32 %t2455, i32 %t2457, float %t2459, float %t2461, i32* %t2463, i32 %t2465, float* %t2467, i32 %t2469, i32* %t2471, i32* %t2473, float %t2475, float %t2477, float* %t2479, i32 %t2481, i32* %t2483, float* %t2485, float %t2487, i32 %t2489, float %t2491, float* %t2493, float* %t2495, float %t2497, i32 %t2499)
  store i32 %t1510, i32* %t2371, align 4
  %t1512 = load float, float* %t2080, align 4
  call void @putfloat(float %t1512)
  call void @putch(i32 10)
  %t1513 = load float, float* %t2161, align 4
  call void @putfloat(float %t1513)
  call void @putch(i32 10)
  %t1514 = load float, float* %t2290, align 4
  call void @putfloat(float %t1514)
  call void @putch(i32 10)
  %t1515 = load i32, i32* %t2371, align 4
  call void @putint(i32 %t1515)
  call void @putch(i32 10)
  ret i32 0
}
declare void @putfarray(i32, float*)
declare void @putarray(i32, i32*)
declare i32 @getint()
declare i32 @getfarray(float*)
declare i32 @getarray(i32*)
declare void @putfloat(float)
declare void @putch(i32)
declare void @putint(i32)
declare void @llvm.memset.p0.i32(i8*, i8, i32, i1)
