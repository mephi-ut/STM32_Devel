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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_1242562249;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *VL_P_2533777724;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_16541823861846354283_2073120511_init();
    work_m_17101483134921830187_1148960553_init();
    work_m_16037748242132987739_3656180732_init();
    work_m_17101483134921830187_2586023783_init();
    work_m_16037748242132987739_1812407904_init();
    work_m_16562971922259005791_2072830841_init();
    work_m_16562971922259005791_2020177359_init();
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_03367362533346577578_2449448540_init();
    unisims_ver_m_02553951401163808816_4245414866_init();
    work_m_15498981380621964558_3982910969_init();
    work_m_07742682270452569587_1440303589_init();
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    vl_p_2533777724_init();
    work_a_3902403662_3212880686_init();


    xsi_register_tops("work_a_3902403662_3212880686");
    xsi_register_tops("work_m_16541823861846354283_2073120511");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");

    return xsi_run_simulation(argc, argv);

}
