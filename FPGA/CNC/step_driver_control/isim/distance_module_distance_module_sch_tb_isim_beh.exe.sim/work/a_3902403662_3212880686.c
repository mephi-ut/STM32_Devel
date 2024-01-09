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
static const char *ng0 = "/home/lusius/Devel/STM32_Devel/FPGA/CNC/step_driver_control/distance_test.vhd";



static void work_a_3902403662_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    int t10;

LAB0:    t1 = (t0 + 3464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4104);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4232);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(70, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3976);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 4040);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4104);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 6937);
    *((int *)t2) = 0;
    t3 = (t0 + 6941);
    *((int *)t3) = 4;
    t8 = 0;
    t9 = 4;

LAB16:    if (t8 <= t9)
        goto LAB17;

LAB19:    xsi_set_current_line(86, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(81, ng0);
    t7 = (10 * 1000LL);
    t4 = (t0 + 3272);
    xsi_process_wait(t4, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 6937);
    t8 = *((int *)t2);
    t3 = (t0 + 6941);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB19;

LAB28:    t10 = (t8 + 1);
    t8 = t10;
    t4 = (t0 + 6937);
    *((int *)t4) = t8;
    goto LAB16;

LAB20:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3912);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB29:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4104);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB33:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4232);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 6945);
    *((int *)t2) = 0;
    t3 = (t0 + 6949);
    *((int *)t3) = 800;
    t8 = 0;
    t9 = 800;

LAB37:    if (t8 <= t9)
        goto LAB38;

LAB40:    goto LAB2;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB38:    xsi_set_current_line(93, ng0);
    t7 = (10 * 1000LL);
    t4 = (t0 + 3272);
    xsi_process_wait(t4, t7);

LAB43:    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB39:    t2 = (t0 + 6945);
    t8 = *((int *)t2);
    t3 = (t0 + 6949);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB40;

LAB49:    t10 = (t8 + 1);
    t8 = t10;
    t4 = (t0 + 6945);
    *((int *)t4) = t8;
    goto LAB37;

LAB41:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3272);
    xsi_process_wait(t2, t7);

LAB47:    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB42:    goto LAB41;

LAB44:    goto LAB42;

LAB45:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB39;

LAB46:    goto LAB45;

LAB48:    goto LAB46;

}


extern void work_a_3902403662_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3902403662_3212880686_p_0};
	xsi_register_didat("work_a_3902403662_3212880686", "isim/distance_module_distance_module_sch_tb_isim_beh.exe.sim/work/a_3902403662_3212880686.didat");
	xsi_register_executes(pe);
}
