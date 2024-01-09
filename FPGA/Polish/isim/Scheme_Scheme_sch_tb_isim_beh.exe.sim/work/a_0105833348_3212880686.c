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
static const char *ng0 = "/home/trurl/Develop/STM32_Devel/FPGA/Modules/test.vhd";



static void work_a_0105833348_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2952);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2952);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0105833348_3212880686_p_1(char *t0)
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
    char *t10;
    char *t11;
    int t12;

LAB0:    t1 = (t0 + 3392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4032);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 6239);
    *((int *)t2) = 0;
    t3 = (t0 + 6243);
    *((int *)t3) = 32;
    t8 = 0;
    t9 = 32;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 6247);
    *((int *)t2) = 0;
    t3 = (t0 + 6251);
    *((int *)t3) = 8;
    t8 = 0;
    t9 = 8;

LAB21:    if (t8 <= t9)
        goto LAB22;

LAB24:    xsi_set_current_line(84, ng0);
    t7 = (2000 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 3968);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(72, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 6239);
    t8 = *((int *)t2);
    t3 = (t0 + 6243);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB11;

LAB20:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 6239);
    *((int *)t4) = t8;
    goto LAB8;

LAB12:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB10;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB22:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 3840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(79, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB23:    t2 = (t0 + 6247);
    t8 = *((int *)t2);
    t3 = (t0 + 6251);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB24;

LAB33:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 6247);
    *((int *)t4) = t8;
    goto LAB21;

LAB25:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB31:    *((char **)t1) = &&LAB32;
    goto LAB1;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB29:    goto LAB23;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

LAB34:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6255);
    *((int *)t2) = 0;
    t3 = (t0 + 6259);
    *((int *)t3) = 8;
    t8 = 0;
    t9 = 8;

LAB38:    if (t8 <= t9)
        goto LAB39;

LAB41:    xsi_set_current_line(93, ng0);
    t7 = (2000 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB53:    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB39:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 3840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB40:    t2 = (t0 + 6255);
    t8 = *((int *)t2);
    t3 = (t0 + 6259);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB41;

LAB50:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 6255);
    *((int *)t4) = t8;
    goto LAB38;

LAB42:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    goto LAB40;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB51:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6263);
    *((int *)t2) = 0;
    t3 = (t0 + 6267);
    *((int *)t3) = 8;
    t8 = 0;
    t9 = 8;

LAB55:    if (t8 <= t9)
        goto LAB56;

LAB58:    xsi_set_current_line(102, ng0);
    t7 = (2000 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB52:    goto LAB51;

LAB54:    goto LAB52;

LAB56:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 3840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(97, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB61:    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB57:    t2 = (t0 + 6263);
    t8 = *((int *)t2);
    t3 = (t0 + 6267);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB58;

LAB67:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 6263);
    *((int *)t4) = t8;
    goto LAB55;

LAB59:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB65:    *((char **)t1) = &&LAB66;
    goto LAB1;

LAB60:    goto LAB59;

LAB62:    goto LAB60;

LAB63:    goto LAB57;

LAB64:    goto LAB63;

LAB66:    goto LAB64;

LAB68:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 6271);
    *((int *)t2) = 0;
    t3 = (t0 + 6275);
    *((int *)t3) = 8;
    t8 = 0;
    t9 = 8;

LAB72:    if (t8 <= t9)
        goto LAB73;

LAB75:    xsi_set_current_line(111, ng0);
    t7 = (2000 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB87:    *((char **)t1) = &&LAB88;
    goto LAB1;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

LAB73:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 3840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(106, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB78:    *((char **)t1) = &&LAB79;
    goto LAB1;

LAB74:    t2 = (t0 + 6271);
    t8 = *((int *)t2);
    t3 = (t0 + 6275);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB75;

LAB84:    t12 = (t8 + 1);
    t8 = t12;
    t4 = (t0 + 6271);
    *((int *)t4) = t8;
    goto LAB72;

LAB76:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3200);
    xsi_process_wait(t2, t7);

LAB82:    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB77:    goto LAB76;

LAB79:    goto LAB77;

LAB80:    goto LAB74;

LAB81:    goto LAB80;

LAB83:    goto LAB81;

LAB85:    goto LAB2;

LAB86:    goto LAB85;

LAB88:    goto LAB86;

}


extern void work_a_0105833348_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0105833348_3212880686_p_0,(void *)work_a_0105833348_3212880686_p_1};
	xsi_register_didat("work_a_0105833348_3212880686", "isim/Scheme_Scheme_sch_tb_isim_beh.exe.sim/work/a_0105833348_3212880686.didat");
	xsi_register_executes(pe);
}
