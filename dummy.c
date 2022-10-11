char       testBlank[0x100];
char        testInit[0x100]  =  "Test123";
const char testConst[0x100]  =  "Const123";

int func1(void)
{
	int t = 0;
	t++;
	return t;
}