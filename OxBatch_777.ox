#include <oxstd.oxh>
#import <packages/CATS/CATS>

run_1()
{
	//--- Ox code for CATS( 1)
	decl model = new CATS();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Select("Y", {"LPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"LCET PC TEP", 0, 0});
//	model.Select("U", {"Constant", 0, 0});

	model.Lags(2,2,2);
	model.I1Rank(2);
	model.Trend("DRIFT");
	model.SetSelSample(1972, 1, 2009, 1);
	model.SetMethod("RRR");
	model.Estimate();

	model.TestEachAllRanks();
	model.Restrict({"[beta]","[alpha]","1 0"});
	model.BootstrapRestrictions();

	delete model;
}

run_2()
{
	//--- Ox code for CATS( 1)
	decl model = new CATS();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Select("Y", {"LPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"LCET PC", 0, 0});
//	model.Select("U", {"Constant", 0, 0});

	model.Lags(2,2,2);
	model.I1Rank(2);
	model.Trend("DRIFT");
	model.SetSelSample(1972, 1, 2009, 1);
	model.SetMethod("RRR");
	model.Estimate();

	model.TestEachAllRanks();

	delete model;
}

run_3()
{
	//--- Ox code for CATS( 2)
	decl model = new CATS();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Select("Y", {"LPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"LCET PC", 0, 0});
//	model.Select("U", {"Constant", 0, 0});

	model.Lags(2,2,2);
	model.I1Rank(1);
	model.Trend("DRIFT");
	model.SetSelSample(1972, 1, 2009, 1);
	model.SetMethod("RRR");
	model.Estimate();

	model.Restrict({"[beta]","1 -1","[alpha]"});

	delete model;
}

run_4()
{
	//--- Ox code for CATS( 1)
	decl model = new CATS();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito2.xlsx");
	model.Select("Y", {"LPIB", 0, 0});
	model.Select("Y", {"LCET em mil TEP", 0, 0});
//	model.Select("U", {"Constant", 0, 0});

	model.Lags(2,2,2);
	model.I1Rank(2);
	model.Trend("DRIFT");
	model.SetSelSample(1972, 1, 2009, 1);
	model.SetMethod("RRR");
	model.Estimate();

	model.TestEachAllRanks();

	delete model;
}

run_5()
{
	//--- Ox code for CATS( 1)
	decl model = new CATS();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Select("Y", {"LPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"LCET PC", 0, 0});
//	model.Select("U", {"Constant", 0, 0});

	model.Lags(2,2,2);
	model.I1Rank(2);
	model.Trend("DRIFT");
	model.SetSelSample(1972, 1, 2022, 1);
	model.SetMethod("RRR");
	model.Estimate();

	model.TestEachAllRanks();

	delete model;
}

run_6()
{
	//--- Ox code for CATS( 2)
	decl model = new CATS();

	model.Load("C:\\Users\\user\\Documents\\EESP 2023.2\\Econo 2\\Trabalho Econo2\\Refeito.xlsx");
	model.Select("Y", {"LPIB per capita mil R$ (à preços de 2022)", 0, 0});
	model.Select("Y", {"LCET PC", 0, 0});
//	model.Select("U", {"Constant", 0, 0});

	model.Lags(2,2,2);
	model.I1Rank(1);
	model.Trend("DRIFT");
	model.SetSelSample(1972, 1, 2022, 1);
	model.SetMethod("RRR");
	model.Estimate();

	model.Restrict({"[beta]","1 -1","[alpha]"});

	delete model;
}

main()
{
	run_1();
	run_2();
	run_3();
	run_4();
	run_5();
	run_6();
}
