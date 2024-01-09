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
static const char *ng0 = "/home/trurl/Develop/STM32_Devel/FPGA/Modules/C8_BD_C.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1243553155_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    int t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 992U);
    t5 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1152U);
    t5 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t5 == 1)
        goto LAB14;

LAB15:    t2 = (unsigned char)0;

LAB16:    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1808U);
    t3 = *((char **)t1);
    t6 = *((int *)t3);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t12, t6, 8);
    t4 = (t0 + 3184);
    t8 = (t4 + 56U);
    t11 = *((char **)t8);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t4);
    t1 = (t0 + 3104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1808U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    *((int *)t3) = 0;
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1808U);
    t8 = *((char **)t3);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t3 = (t0 + 1808U);
    t11 = *((char **)t3);
    t3 = (t11 + 0);
    *((int *)t3) = t10;
    goto LAB6;

LAB8:    t3 = (t0 + 1808U);
    t4 = *((char **)t3);
    t6 = *((int *)t4);
    t7 = (t6 != 254);
    t2 = t7;
    goto LAB10;

LAB11:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1808U);
    t8 = *((char **)t3);
    t9 = *((int *)t8);
    t10 = (t9 - 1);
    t3 = (t0 + 1808U);
    t11 = *((char **)t3);
    t3 = (t11 + 0);
    *((int *)t3) = t10;
    goto LAB12;

LAB14:    t3 = (t0 + 1808U);
    t4 = *((char **)t3);
    t6 = *((int *)t4);
    t7 = (t6 != 0);
    t2 = t7;
    goto LAB16;

}


extern void work_a_1243553155_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1243553155_3212880686_p_0};
	xsi_register_didat("work_a_1243553155_3212880686", "isim/Scheme_Scheme_sch_tb_isim_beh.exe.sim/work/a_1243553155_3212880686.didat");
	xsi_register_executes(pe);
}
