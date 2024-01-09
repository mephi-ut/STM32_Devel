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
    unisims_ver_m_11476798767575739854_3432996463_init();
    unisims_ver_m_05577185758471972045_1435897813_init();
    work_m_15434930759046094056_1211808835_init();
    unisims_ver_m_15469197826776211918_2316096324_init();
    unisims_ver_m_16176787317968387356_3476364530_init();
    unisims_ver_m_16176787317968387356_0970595058_init();
    unisims_ver_m_02553951401163808816_4245414866_init();
    unisims_ver_m_16631666276591928709_3125220529_init();
    unisims_ver_m_15469197826776211918_0709700939_init();
    unisims_ver_m_14847878262695168179_3126461646_init();
    unisims_ver_m_05327521589403000887_3385870570_init();
    unisims_ver_m_13515119476374432582_1471470921_init();
    unisims_ver_m_16631666276591928709_2161410271_init();
    work_m_00023382766454920484_1338781239_init();
    work_m_04937460358726987288_4253508971_init();
    work_m_09927578875932392473_2071756768_init();
    work_m_10751961694002971814_1088898855_init();
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    vl_p_2533777724_init();
    work_a_3122282704_3212880686_init();


    xsi_register_tops("work_a_3122282704_3212880686");
    xsi_register_tops("work_m_16541823861846354283_2073120511");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");

    return xsi_run_simulation(argc, argv);

}
