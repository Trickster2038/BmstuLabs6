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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Professional/Desktop/BmstuLabs6/evm/hw/hw/control_unit.vhd";



static void work_a_3853510154_2882506817_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    char *t33;
    static char *nl0[] = {&&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16};

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 5497);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(21, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t2 = (char *)((nl0) + t13);
    goto **((char **)t2);

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    goto LAB3;

LAB11:    xsi_set_current_line(25, ng0);
    t7 = (t0 + 5505);
    t9 = (t0 + 3232);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (2 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB17;

LAB19:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (4 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB25;

LAB26:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (5 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;

LAB27:    if (t3 != 0)
        goto LAB23;

LAB24:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (0 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB30;

LAB31:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (2 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;

LAB32:    if (t3 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (3 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB33;

LAB34:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 5537);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB10;

LAB12:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 5545);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (0 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB38;

LAB39:    t3 = (unsigned char)0;

LAB40:    if (t3 != 0)
        goto LAB35;

LAB37:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB36:    goto LAB10;

LAB13:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5553);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (1 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5569);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB42:    goto LAB10;

LAB14:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (0 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB47;

LAB48:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (2 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;

LAB49:    if (t3 != 0)
        goto LAB44;

LAB46:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB45:    goto LAB10;

LAB15:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5585);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (3 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t11 = *((unsigned char *)t1);
    t12 = (t11 == (unsigned char)2);
    if (t12 == 1)
        goto LAB56;

LAB57:    t4 = (unsigned char)0;

LAB58:    if (t4 == 1)
        goto LAB53;

LAB54:    t3 = (unsigned char)0;

LAB55:    if (t3 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB51:    goto LAB10;

LAB16:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5601);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t17 = (0 - 5);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB62;

LAB63:    t3 = (unsigned char)0;

LAB64:    if (t3 != 0)
        goto LAB59;

LAB61:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5609);
    t5 = (t0 + 3232);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);

LAB60:    goto LAB10;

LAB17:    xsi_set_current_line(27, ng0);
    t7 = (t0 + 5513);
    t9 = (t0 + 3232);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB20:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (3 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB22;

LAB23:    xsi_set_current_line(30, ng0);
    t7 = (t0 + 5521);
    t9 = (t0 + 3232);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB25:    t3 = (unsigned char)1;
    goto LAB27;

LAB28:    xsi_set_current_line(33, ng0);
    t7 = (t0 + 5529);
    t9 = (t0 + 3232);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

LAB30:    t3 = (unsigned char)1;
    goto LAB32;

LAB33:    xsi_set_current_line(36, ng0);
    t5 = (t0 + 3296);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)4;
    xsi_driver_first_trans_fast(t5);
    goto LAB18;

LAB35:    xsi_set_current_line(44, ng0);
    t7 = (t0 + 3296);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t7);
    goto LAB36;

LAB38:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (1 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB40;

LAB41:    xsi_set_current_line(51, ng0);
    t5 = (t0 + 5561);
    t7 = (t0 + 3232);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB42;

LAB44:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 5577);
    t9 = (t0 + 3232);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB45;

LAB47:    t3 = (unsigned char)1;
    goto LAB49;

LAB50:    xsi_set_current_line(67, ng0);
    t9 = (t0 + 5593);
    t14 = (t0 + 3232);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t32 = (t16 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t9, 8U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB51;

LAB53:    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t26 = (0 - 5);
    t27 = (t26 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t7 = (t8 + t29);
    t30 = *((unsigned char *)t7);
    t31 = (t30 == (unsigned char)2);
    t3 = t31;
    goto LAB55;

LAB56:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (5 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t13 = *((unsigned char *)t5);
    t25 = (t13 == (unsigned char)3);
    t4 = t25;
    goto LAB58;

LAB59:    xsi_set_current_line(75, ng0);
    t7 = (t0 + 3296);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    *((unsigned char *)t14) = (unsigned char)5;
    xsi_driver_first_trans_fast(t7);
    goto LAB60;

LAB62:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t21 = (2 - 5);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t5 = (t6 + t24);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)2);
    t3 = t13;
    goto LAB64;

}


extern void work_a_3853510154_2882506817_init()
{
	static char *pe[] = {(void *)work_a_3853510154_2882506817_p_0};
	xsi_register_didat("work_a_3853510154_2882506817", "isim/control_unit_tb_isim_beh.exe.sim/work/a_3853510154_2882506817.didat");
	xsi_register_executes(pe);
}
