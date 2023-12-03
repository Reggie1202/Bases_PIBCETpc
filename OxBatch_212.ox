#include <oxstd.oxh>
#import <packages/PcGive/pcgive>

run_1()
{
// This program requires a licenced version of PcGive.
	//--- Ox code for MOD( 1)
	decl model = new PcGive();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Deterministic(-1);

	model.Select("Y", {"DLPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"DLCET PC TEP", 0, 0});
	model.Select("Y", {"DLPIB per capita mil R$ (à preços de 2022)", 1, 1});
	model.Select("Y", {"DLCET PC TEP", 1, 1});
	model.Select("I", {"CIa", 1, 1});
	model.Select("I", {"CIa", 0, 0});
	model.Select("U", {"Constant", 0, 0});
	model.SetModelClass("SYSTEM");
	model.SetEquation("DLPIB per capita mil R$ (à preços de 2022)", {"DLPIB per capita mil R$ (à preços de 2022)",1,1,"DLCET PC TEP",1,1,"CIa",1,1});
	model.SetEquation("DLCET PC TEP", {"DLPIB per capita mil R$ (à preços de 2022)",1,1,"DLCET PC TEP",1,1,"CIa",1,1});
	model.SetEquation("CIa", {"DLPIB per capita mil R$ (à preços de 2022)",0,0,"DLCET PC TEP",0,0,"CIa",1,1});
	model.SetSelSample(1972, 1, 2022, 1);
	model.SetMethod("FIML");
	model.Estimate();

	delete model;
}

run_2()
{
// This program requires a licenced version of PcGive.
	//--- Ox code for MOD( 2)
	decl model = new PcGive();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Deterministic(-1);

	model.Select("Y", {"DLPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"DLCET PC TEP", 0, 0});
	model.Select("I", {"CIa", 1, 1});
	model.Select("I", {"CIa", 0, 0});
	model.Select("U", {"Constant", 0, 0});
	model.SetModelClass("SYSTEM");
	model.SetEquation("DLPIB per capita mil R$ (à preços de 2022)", {"CIa",1,1});
	model.SetEquation("DLCET PC TEP", {"CIa",1,1});
	model.SetEquation("CIa", {"DLPIB per capita mil R$ (à preços de 2022)",0,0,"DLCET PC TEP",0,0,"CIa",1,1});
	model.SetSelSample(1972, 1, 2022, 1);
	model.SetMethod("FIML");
	model.Estimate();

	delete model;
}

main()
{
	run_1();
	run_2();
}
