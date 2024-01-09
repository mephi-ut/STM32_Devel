/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/lusius/Devel/STM32_Devel/FPGA/tst1/tst/tst1.vf";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {15U, 0U};



static void Always_50_0(char *t0)
{
    char t16[8];
    char t30[8];
    char t35[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 5528);
    *((int *)t2) = 1;
    t3 = (t0 + 4744);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(51, ng0);

LAB5:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1960U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2760U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB12;

LAB13:
LAB14:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(53, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    t13 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t13, t11, 1, 0, 1, 0LL);
    t14 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t14, t11, 2, 0, 1, 0LL);
    t15 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t15, t11, 3, 0, 1, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2120U);
    t5 = *((char **)t4);
    t4 = (t0 + 2280U);
    t11 = *((char **)t4);
    t4 = (t0 + 2440U);
    t12 = *((char **)t4);
    t4 = (t0 + 2600U);
    t13 = *((char **)t4);
    xsi_vlogtype_concat(t16, 4, 4, 4U, t13, 1, t12, 1, t11, 1, t5, 1);
    t4 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 1, 0LL);
    t14 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t14, t16, 1, 0, 1, 0LL);
    t15 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t15, t16, 2, 0, 1, 0LL);
    t17 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t17, t16, 3, 0, 1, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(57, ng0);

LAB15:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 2920U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    t20 = *((unsigned int *)t5);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2920U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t2) == 0)
        goto LAB19;

LAB21:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB22:    t5 = (t16 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    t20 = *((unsigned int *)t16);
    t21 = (t20 & t19);
    t22 = (t21 != 0);
    if (t22 > 0)
        goto LAB23;

LAB24:
LAB25:
LAB18:    goto LAB14;

LAB16:    xsi_set_current_line(59, ng0);
    t11 = (t0 + 3320);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 3480);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t23 = (t0 + 3640);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t0 + 3800);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    xsi_vlogtype_concat(t16, 32, 4, 4U, t28, 1, t25, 1, t17, 1, t13, 1);
    t29 = ((char*)((ng2)));
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 32, t16, 32, t29, 32);
    t31 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 1, 0LL);
    t32 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t32, t30, 1, 0, 1, 0LL);
    t33 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t33, t30, 2, 0, 1, 0LL);
    t34 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t34, t30, 3, 0, 1, 0LL);
    goto LAB18;

LAB19:    *((unsigned int *)t16) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(61, ng0);
    t11 = (t0 + 3320);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 3480);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t23 = (t0 + 3640);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t0 + 3800);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    xsi_vlogtype_concat(t30, 32, 4, 4U, t28, 1, t25, 1, t17, 1, t13, 1);
    t29 = ((char*)((ng2)));
    memset(t35, 0, 8);
    xsi_vlog_unsigned_minus(t35, 32, t30, 32, t29, 32);
    t31 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t31, t35, 0, 0, 1, 0LL);
    t32 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t32, t35, 1, 0, 1, 0LL);
    t33 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t33, t35, 2, 0, 1, 0LL);
    t34 = (t0 + 3800);
    xsi_vlogvar_wait_assign_value(t34, t35, 3, 0, 1, 0LL);
    goto LAB25;

}

static void Cont_65_1(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t0 + 1800U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 & t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t36 = (t0 + 5640);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memset(t40, 0, 8);
    t41 = 1U;
    t42 = t41;
    t43 = (t5 + 4);
    t44 = *((unsigned int *)t5);
    t41 = (t41 & t44);
    t45 = *((unsigned int *)t43);
    t42 = (t42 & t45);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t47 | t41);
    t48 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t48 | t42);
    xsi_driver_vfirst_trans(t36, 0, 0);
    t49 = (t0 + 5544);
    *((int *)t49) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t3);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t28 = (t21 & t23);
    t29 = (t25 & t27);
    t30 = (~(t28));
    t31 = (~(t29));
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & t30);
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t34 & t30);
    t35 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t35 & t31);
    goto LAB6;

}

static void Cont_66_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t21[8];
    char t35[8];
    char t51[8];
    char t65[8];
    char t72[8];
    char t104[8];
    char t117[8];
    char t131[8];
    char t147[8];
    char t159[8];
    char t168[8];
    char t176[8];
    char t208[8];
    char t216[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    int t96;
    int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    char *t167;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    char *t175;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;
    char *t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    char *t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    int t200;
    int t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    char *t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    char *t215;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    char *t220;
    char *t221;
    char *t222;
    unsigned int t223;
    unsigned int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    char *t230;
    char *t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    char *t244;
    char *t245;
    char *t246;
    char *t247;
    char *t248;
    unsigned int t249;
    unsigned int t250;
    char *t251;
    unsigned int t252;
    unsigned int t253;
    char *t254;
    unsigned int t255;
    unsigned int t256;
    char *t257;

LAB0:    t1 = (t0 + 5208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1960U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    t19 = *((unsigned int *)t12);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t216, 8);

LAB16:    t244 = (t0 + 5704);
    t245 = (t244 + 56U);
    t246 = *((char **)t245);
    t247 = (t246 + 56U);
    t248 = *((char **)t247);
    memset(t248, 0, 8);
    t249 = 1U;
    t250 = t249;
    t251 = (t3 + 4);
    t252 = *((unsigned int *)t3);
    t249 = (t249 & t252);
    t253 = *((unsigned int *)t251);
    t250 = (t250 & t253);
    t254 = (t248 + 4);
    t255 = *((unsigned int *)t248);
    *((unsigned int *)t248) = (t255 | t249);
    t256 = *((unsigned int *)t254);
    *((unsigned int *)t254) = (t256 | t250);
    xsi_driver_vfirst_trans(t244, 0, 0);
    t257 = (t0 + 5560);
    *((int *)t257) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng1)));
    goto LAB9;

LAB10:    t22 = (t0 + 3320);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t0 + 3480);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 3640);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 3800);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    xsi_vlogtype_concat(t21, 4, 4, 4U, t33, 1, t30, 1, t27, 1, t24, 1);
    t34 = ((char*)((ng3)));
    memset(t35, 0, 8);
    t36 = (t21 + 4);
    t37 = (t34 + 4);
    t38 = *((unsigned int *)t21);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = (t40 | t43);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t37);
    t47 = (t45 | t46);
    t48 = (~(t47));
    t49 = (t44 & t48);
    if (t49 != 0)
        goto LAB20;

LAB17:    if (t47 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t35) = 1;

LAB20:    memset(t51, 0, 8);
    t52 = (t35 + 4);
    t53 = *((unsigned int *)t52);
    t54 = (~(t53));
    t55 = *((unsigned int *)t35);
    t56 = (t55 & t54);
    t57 = (t56 & 1U);
    if (t57 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t52) != 0)
        goto LAB23;

LAB24:    t59 = (t51 + 4);
    t60 = *((unsigned int *)t51);
    t61 = *((unsigned int *)t59);
    t62 = (t60 || t61);
    if (t62 > 0)
        goto LAB25;

LAB26:    memcpy(t72, t51, 8);

LAB27:    memset(t104, 0, 8);
    t105 = (t72 + 4);
    t106 = *((unsigned int *)t105);
    t107 = (~(t106));
    t108 = *((unsigned int *)t72);
    t109 = (t108 & t107);
    t110 = (t109 & 1U);
    if (t110 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t105) != 0)
        goto LAB37;

LAB38:    t112 = (t104 + 4);
    t113 = *((unsigned int *)t104);
    t114 = (!(t113));
    t115 = *((unsigned int *)t112);
    t116 = (t114 || t115);
    if (t116 > 0)
        goto LAB39;

LAB40:    memcpy(t216, t104, 8);

LAB41:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 1, t16, 1, t216, 1);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

LAB19:    t50 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t50) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t51) = 1;
    goto LAB24;

LAB23:    t58 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB24;

LAB25:    t63 = (t0 + 2920U);
    t64 = *((char **)t63);
    memset(t65, 0, 8);
    t63 = (t64 + 4);
    t66 = *((unsigned int *)t63);
    t67 = (~(t66));
    t68 = *((unsigned int *)t64);
    t69 = (t68 & t67);
    t70 = (t69 & 1U);
    if (t70 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t63) != 0)
        goto LAB30;

LAB31:    t73 = *((unsigned int *)t51);
    t74 = *((unsigned int *)t65);
    t75 = (t73 & t74);
    *((unsigned int *)t72) = t75;
    t76 = (t51 + 4);
    t77 = (t65 + 4);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t76);
    t80 = *((unsigned int *)t77);
    t81 = (t79 | t80);
    *((unsigned int *)t78) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 != 0);
    if (t83 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB27;

LAB28:    *((unsigned int *)t65) = 1;
    goto LAB31;

LAB30:    t71 = (t65 + 4);
    *((unsigned int *)t65) = 1;
    *((unsigned int *)t71) = 1;
    goto LAB31;

LAB32:    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t78);
    *((unsigned int *)t72) = (t84 | t85);
    t86 = (t51 + 4);
    t87 = (t65 + 4);
    t88 = *((unsigned int *)t51);
    t89 = (~(t88));
    t90 = *((unsigned int *)t86);
    t91 = (~(t90));
    t92 = *((unsigned int *)t65);
    t93 = (~(t92));
    t94 = *((unsigned int *)t87);
    t95 = (~(t94));
    t96 = (t89 & t91);
    t97 = (t93 & t95);
    t98 = (~(t96));
    t99 = (~(t97));
    t100 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t100 & t98);
    t101 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t101 & t99);
    t102 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t102 & t98);
    t103 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t103 & t99);
    goto LAB34;

LAB35:    *((unsigned int *)t104) = 1;
    goto LAB38;

LAB37:    t111 = (t104 + 4);
    *((unsigned int *)t104) = 1;
    *((unsigned int *)t111) = 1;
    goto LAB38;

LAB39:    t118 = (t0 + 3320);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    t121 = (t0 + 3480);
    t122 = (t121 + 56U);
    t123 = *((char **)t122);
    t124 = (t0 + 3640);
    t125 = (t124 + 56U);
    t126 = *((char **)t125);
    t127 = (t0 + 3800);
    t128 = (t127 + 56U);
    t129 = *((char **)t128);
    xsi_vlogtype_concat(t117, 4, 4, 4U, t129, 1, t126, 1, t123, 1, t120, 1);
    t130 = ((char*)((ng1)));
    memset(t131, 0, 8);
    t132 = (t117 + 4);
    t133 = (t130 + 4);
    t134 = *((unsigned int *)t117);
    t135 = *((unsigned int *)t130);
    t136 = (t134 ^ t135);
    t137 = *((unsigned int *)t132);
    t138 = *((unsigned int *)t133);
    t139 = (t137 ^ t138);
    t140 = (t136 | t139);
    t141 = *((unsigned int *)t132);
    t142 = *((unsigned int *)t133);
    t143 = (t141 | t142);
    t144 = (~(t143));
    t145 = (t140 & t144);
    if (t145 != 0)
        goto LAB45;

LAB42:    if (t143 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t131) = 1;

LAB45:    memset(t147, 0, 8);
    t148 = (t131 + 4);
    t149 = *((unsigned int *)t148);
    t150 = (~(t149));
    t151 = *((unsigned int *)t131);
    t152 = (t151 & t150);
    t153 = (t152 & 1U);
    if (t153 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t148) != 0)
        goto LAB48;

LAB49:    t155 = (t147 + 4);
    t156 = *((unsigned int *)t147);
    t157 = *((unsigned int *)t155);
    t158 = (t156 || t157);
    if (t158 > 0)
        goto LAB50;

LAB51:    memcpy(t176, t147, 8);

LAB52:    memset(t208, 0, 8);
    t209 = (t176 + 4);
    t210 = *((unsigned int *)t209);
    t211 = (~(t210));
    t212 = *((unsigned int *)t176);
    t213 = (t212 & t211);
    t214 = (t213 & 1U);
    if (t214 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t209) != 0)
        goto LAB66;

LAB67:    t217 = *((unsigned int *)t104);
    t218 = *((unsigned int *)t208);
    t219 = (t217 | t218);
    *((unsigned int *)t216) = t219;
    t220 = (t104 + 4);
    t221 = (t208 + 4);
    t222 = (t216 + 4);
    t223 = *((unsigned int *)t220);
    t224 = *((unsigned int *)t221);
    t225 = (t223 | t224);
    *((unsigned int *)t222) = t225;
    t226 = *((unsigned int *)t222);
    t227 = (t226 != 0);
    if (t227 == 1)
        goto LAB68;

LAB69:
LAB70:    goto LAB41;

LAB44:    t146 = (t131 + 4);
    *((unsigned int *)t131) = 1;
    *((unsigned int *)t146) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t147) = 1;
    goto LAB49;

LAB48:    t154 = (t147 + 4);
    *((unsigned int *)t147) = 1;
    *((unsigned int *)t154) = 1;
    goto LAB49;

LAB50:    t160 = (t0 + 2920U);
    t161 = *((char **)t160);
    memset(t159, 0, 8);
    t160 = (t161 + 4);
    t162 = *((unsigned int *)t160);
    t163 = (~(t162));
    t164 = *((unsigned int *)t161);
    t165 = (t164 & t163);
    t166 = (t165 & 1U);
    if (t166 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t160) == 0)
        goto LAB53;

LAB55:    t167 = (t159 + 4);
    *((unsigned int *)t159) = 1;
    *((unsigned int *)t167) = 1;

LAB56:    memset(t168, 0, 8);
    t169 = (t159 + 4);
    t170 = *((unsigned int *)t169);
    t171 = (~(t170));
    t172 = *((unsigned int *)t159);
    t173 = (t172 & t171);
    t174 = (t173 & 1U);
    if (t174 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t169) != 0)
        goto LAB59;

LAB60:    t177 = *((unsigned int *)t147);
    t178 = *((unsigned int *)t168);
    t179 = (t177 & t178);
    *((unsigned int *)t176) = t179;
    t180 = (t147 + 4);
    t181 = (t168 + 4);
    t182 = (t176 + 4);
    t183 = *((unsigned int *)t180);
    t184 = *((unsigned int *)t181);
    t185 = (t183 | t184);
    *((unsigned int *)t182) = t185;
    t186 = *((unsigned int *)t182);
    t187 = (t186 != 0);
    if (t187 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB52;

LAB53:    *((unsigned int *)t159) = 1;
    goto LAB56;

LAB57:    *((unsigned int *)t168) = 1;
    goto LAB60;

LAB59:    t175 = (t168 + 4);
    *((unsigned int *)t168) = 1;
    *((unsigned int *)t175) = 1;
    goto LAB60;

LAB61:    t188 = *((unsigned int *)t176);
    t189 = *((unsigned int *)t182);
    *((unsigned int *)t176) = (t188 | t189);
    t190 = (t147 + 4);
    t191 = (t168 + 4);
    t192 = *((unsigned int *)t147);
    t193 = (~(t192));
    t194 = *((unsigned int *)t190);
    t195 = (~(t194));
    t196 = *((unsigned int *)t168);
    t197 = (~(t196));
    t198 = *((unsigned int *)t191);
    t199 = (~(t198));
    t200 = (t193 & t195);
    t201 = (t197 & t199);
    t202 = (~(t200));
    t203 = (~(t201));
    t204 = *((unsigned int *)t182);
    *((unsigned int *)t182) = (t204 & t202);
    t205 = *((unsigned int *)t182);
    *((unsigned int *)t182) = (t205 & t203);
    t206 = *((unsigned int *)t176);
    *((unsigned int *)t176) = (t206 & t202);
    t207 = *((unsigned int *)t176);
    *((unsigned int *)t176) = (t207 & t203);
    goto LAB63;

LAB64:    *((unsigned int *)t208) = 1;
    goto LAB67;

LAB66:    t215 = (t208 + 4);
    *((unsigned int *)t208) = 1;
    *((unsigned int *)t215) = 1;
    goto LAB67;

LAB68:    t228 = *((unsigned int *)t216);
    t229 = *((unsigned int *)t222);
    *((unsigned int *)t216) = (t228 | t229);
    t230 = (t104 + 4);
    t231 = (t208 + 4);
    t232 = *((unsigned int *)t230);
    t233 = (~(t232));
    t234 = *((unsigned int *)t104);
    t235 = (t234 & t233);
    t236 = *((unsigned int *)t231);
    t237 = (~(t236));
    t238 = *((unsigned int *)t208);
    t239 = (t238 & t237);
    t240 = (~(t235));
    t241 = (~(t239));
    t242 = *((unsigned int *)t222);
    *((unsigned int *)t222) = (t242 & t240);
    t243 = *((unsigned int *)t222);
    *((unsigned int *)t222) = (t243 & t241);
    goto LAB70;

}


extern void work_m_15434930759046094056_0060574003_init()
{
	static char *pe[] = {(void *)Always_50_0,(void *)Cont_65_1,(void *)Cont_66_2};
	xsi_register_didat("work_m_15434930759046094056_0060574003", "isim/tst1_tst1_sch_tb_isim_beh.exe.sim/work/m_15434930759046094056_0060574003.didat");
	xsi_register_executes(pe);
}
