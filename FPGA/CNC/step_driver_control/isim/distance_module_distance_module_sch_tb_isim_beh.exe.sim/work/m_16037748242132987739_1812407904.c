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
static const char *ng0 = "/home/lusius/Devel/STM32_Devel/FPGA/CNC/step_driver_control/distance_module.vf";
static unsigned int ng1[] = {0U, 0U};



static void Always_100_0(char *t0)
{
    char t13[8];
    char t14[8];
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
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3160);
    *((int *)t2) = 1;
    t3 = (t0 + 2872);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(101, ng0);

LAB5:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(103, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 16, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 1928);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    memset(t14, 0, 8);
    t15 = (t14 + 4);
    t16 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (t17 >> 0);
    *((unsigned int *)t14) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t15) = t20;
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 & 32767U);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t22 & 32767U);
    xsi_vlogtype_concat(t13, 16, 16, 2U, t14, 15, t5, 1);
    t23 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t23, t13, 0, 0, 16, 0LL);
    goto LAB11;

}


extern void work_m_16037748242132987739_1812407904_init()
{
	static char *pe[] = {(void *)Always_100_0};
	xsi_register_didat("work_m_16037748242132987739_1812407904", "isim/distance_module_distance_module_sch_tb_isim_beh.exe.sim/work/m_16037748242132987739_1812407904.didat");
	xsi_register_executes(pe);
}
