/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_399(char*, char *);
extern void execute_400(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_385(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_387(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_392(char*, char *);
extern void execute_396(char*, char *);
extern void execute_398(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_6(char*, char *);
extern void execute_139(char*, char *);
extern void execute_144(char*, char *);
extern void execute_11(char*, char *);
extern void execute_140(char*, char *);
extern void execute_141(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_14(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_22(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_33(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_38(char*, char *);
extern void execute_292(char*, char *);
extern void execute_298(char*, char *);
extern void execute_299(char*, char *);
extern void execute_308(char*, char *);
extern void execute_309(char*, char *);
extern void execute_310(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_314(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_321(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_41(char*, char *);
extern void execute_69(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_213(char*, char *);
extern void execute_214(char*, char *);
extern void execute_215(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_221(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_228(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_240(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_225(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_74(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_342(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_346(char*, char *);
extern void execute_347(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_351(char*, char *);
extern void execute_352(char*, char *);
extern void execute_116(char*, char *);
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void execute_383(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_401(char*, char *);
extern void execute_402(char*, char *);
extern void execute_403(char*, char *);
extern void execute_404(char*, char *);
extern void execute_405(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[160] = {(funcp)execute_129, (funcp)execute_130, (funcp)execute_399, (funcp)execute_400, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_385, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_387, (funcp)execute_388, (funcp)execute_389, (funcp)execute_390, (funcp)execute_392, (funcp)execute_396, (funcp)execute_398, (funcp)execute_137, (funcp)execute_138, (funcp)execute_6, (funcp)execute_139, (funcp)execute_144, (funcp)execute_11, (funcp)execute_140, (funcp)execute_141, (funcp)execute_142, (funcp)execute_143, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_151, (funcp)execute_14, (funcp)execute_145, (funcp)execute_146, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_22, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_33, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_38, (funcp)execute_292, (funcp)execute_298, (funcp)execute_299, (funcp)execute_308, (funcp)execute_309, (funcp)execute_310, (funcp)execute_311, (funcp)execute_312, (funcp)execute_314, (funcp)execute_319, (funcp)execute_320, (funcp)execute_321, (funcp)execute_322, (funcp)execute_323, (funcp)execute_41, (funcp)execute_69, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_213, (funcp)execute_214, (funcp)execute_215, (funcp)execute_216, (funcp)execute_217, (funcp)execute_218, (funcp)execute_219, (funcp)execute_221, (funcp)execute_222, (funcp)execute_223, (funcp)execute_224, (funcp)execute_228, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_237, (funcp)execute_240, (funcp)execute_242, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_246, (funcp)execute_247, (funcp)execute_248, (funcp)execute_249, (funcp)execute_250, (funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)execute_254, (funcp)execute_255, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_64, (funcp)execute_65, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_74, (funcp)execute_332, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_340, (funcp)execute_341, (funcp)execute_342, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_347, (funcp)execute_348, (funcp)execute_349, (funcp)execute_350, (funcp)execute_351, (funcp)execute_352, (funcp)execute_116, (funcp)execute_354, (funcp)execute_355, (funcp)execute_383, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)execute_401, (funcp)execute_402, (funcp)execute_403, (funcp)execute_404, (funcp)execute_405, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 160;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/design_1_wrapper_TB_behav/xsim.reloc",  (void **)funcTab, 160);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/design_1_wrapper_TB_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/design_1_wrapper_TB_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/design_1_wrapper_TB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/design_1_wrapper_TB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/design_1_wrapper_TB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
