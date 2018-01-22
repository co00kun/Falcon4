//import std.stdio;
//import std.string;
//import std.exception;
//
//// Bkz: https://pmc.editing.wiki/doku.php?id=falcon4:file_formats:ct_file
//
//align(1)
//struct VuEntity {
//    align(1):
//    ushort id;
//    ushort collisionType;
//    float collisionRadius;
//    byte[8] classInfo;
//    uint updateRate;
//    uint updateTolerance;
//    float fineUpdateRange;
//    float fineUpdateForceRange;
//    float fineUpdateMultiplier;
//    uint damageSeed;
//    int hitpoints;
//    ushort majorRevisionNumber;
//    ushort minorRevisionNumber;
//    ushort createPriority;
//    byte managementDomain;
//    byte transferable;
//    byte privatee;
//    byte tangible;
//    byte collidable;
//    byte global;
//    byte persistent;
//    byte[3] padding;
//}
//
//// Denetleyelim
//static assert (VuEntity.sizeof == 60);
//
//align(1)
//struct Falcon4Entity {
//    align(1):
//    VuEntity vuClassData;
//    short[7] visType;
//    short vehicleDataIndex;
//    byte dataType;
//    uint dataPtr;
//}
//
//// Denetleyelim
//static assert ((Falcon4Entity[2]).sizeof == 81 * 2);
//
//Falcon4Entity[] oku(string dosyaİsmi) {
//    auto dosya = File("FALCON4.ct", "rb");
//
//    short adet;
//    auto okunanAdet = dosya.rawRead((&adet)[0..1]);
//    enforce(okunanAdet.length == 1, "HATA: Adet değerini okuyamadım");
//
//    writefln("%s adet nesne okuyorum", adet);
//
//    auto entries = new Falcon4Entity[](adet);
//    auto okunanEntries = dosya.rawRead(entries);
//    enforce(okunanEntries.length == adet,
//            format("HATA: %s yerine yalnızca %s nesne okudum", adet, okunanEntries.length));
//    return entries;
//}
//
//int main(string[] args) {
//    if (args.length != 2) {
//        stderr.writefln("Kullanım: %s <dosya ismi>", args[0]);
//        return 1;
//    }
//
//    Falcon4Entity[] entries = oku(args[1]);
//
//    writefln("Elimde %s adet nesne var: %s", entries.length, entries);
//    readln();
//
//    return 0;
//}


import std.stdio;
import std.string;
import std.file;
import std.format;

void main(string[] parametreler)
{
	short numEntities;
	ushort id;
	ushort collisionType;
	float collisionRadius;
	byte[8] classInfo;
	uint updateRate;
	uint updateTolerance;
	float fineUpdateRange;
	float fineUpdateForceRange;
	float fineUpdateMultiplier;
	uint damageSeed;
	int hitpoints;
	ushort majorRevisionNumber;
	ushort minorRevisionNumber;
	ushort createPriority;
	byte managementDomain;
	byte transferable;
	byte private_;
	byte tangible;
	byte collidable;
	byte global;
	byte persistent;
	byte[3] padding;
	short[7] visType;
	short vehicleDataIndex;
	byte dataType;
	uint dataPtr;
	byte unknow1;
	byte unknow2;

	File dosya = File ("FALCON4.ct", "rb" );
	dosya.rawRead((&numEntities)[0..1]);

	for(int i=0;i<6; i++)  {   // Şimdilik bu 6 dönüyor ancak program bitiminde kayut sayısı kadar dönecek..
		dosya.rawRead((&id)[0..1]);
		dosya.rawRead((&collisionType)[0..1]);
		dosya.rawRead((&collisionRadius)[0..1]);
		dosya.rawRead((&classInfo[0])[0..1]);
		dosya.rawRead((&classInfo[1])[0..1]);
		dosya.rawRead((&classInfo[2])[0..1]);
		dosya.rawRead((&classInfo[3])[0..1]);
		dosya.rawRead((&classInfo[4])[0..1]);
		dosya.rawRead((&classInfo[5])[0..1]);
		dosya.rawRead((&classInfo[6])[0..1]);
		dosya.rawRead((&classInfo[7])[0..1]);
		dosya.rawRead((&updateRate)[0..1]);
		dosya.rawRead((&updateTolerance)[0..1]);
		dosya.rawRead((&fineUpdateRange)[0..1]);
		dosya.rawRead((&fineUpdateForceRange)[0..1]);
		dosya.rawRead((&fineUpdateMultiplier)[0..1]);
		dosya.rawRead((&damageSeed)[0..1]);
		dosya.rawRead((&hitpoints)[0..1]);
		dosya.rawRead((&majorRevisionNumber)[0..1]);
		dosya.rawRead((&minorRevisionNumber)[0..1]);
		dosya.rawRead((&createPriority)[0..1]);
		dosya.rawRead((&managementDomain)[0..1]);
		dosya.rawRead((&transferable)[0..1]);
		dosya.rawRead((&private_)[0..1]);
		dosya.rawRead((&tangible)[0..1]);
		dosya.rawRead((&collidable)[0..1]);
		dosya.rawRead((&global)[0..1]);
		dosya.rawRead((&persistent)[0..1]);
		dosya.rawRead((&padding[0])[0..1]);
		dosya.rawRead((&padding[1])[0..1]);
		dosya.rawRead((&padding[2])[0..1]);
		dosya.rawRead((&visType[0])[0..1]);
		dosya.rawRead((&visType[1])[0..1]);
		dosya.rawRead((&visType[2])[0..1]);
		dosya.rawRead((&visType[3])[0..1]);
		dosya.rawRead((&visType[4])[0..1]);
		dosya.rawRead((&visType[5])[0..1]);
		dosya.rawRead((&visType[6])[0..1]);
		dosya.rawRead((&vehicleDataIndex)[0..1]);
		dosya.rawRead((&dataType)[0..1]);
		dosya.rawRead((&dataPtr)[0..1]);
		dosya.rawRead((&unknow1)[0..1]);
		dosya.rawRead((&unknow2)[0..1]);

		writeln("Num Entities= ",numEntities);
		writeln("Id= ",id);
		writeln("Collision Type= ",collisionType);
		writeln("collision Radius= ",collisionRadius);
		writeln("Class Info [1]= ",classInfo[0]);
		writeln("Class Info [2]= ",classInfo[1]);
		writeln("Class Info [3]= ",classInfo[2]);
		writeln("Class Info [4]= ",classInfo[3]);
		writeln("Class Info [5]= ",classInfo[4]);
		writeln("Class Info [6]= ",classInfo[5]);
		writeln("Class Info [7]= ",classInfo[6]);
		writeln("Update Rate= ",updateRate);
		writeln("Update Tolerance= ",updateTolerance);
		writeln("Fine Update Range= ",fineUpdateRange);
		writeln("FineUpdateForce Range= ",fineUpdateForceRange);
		writeln("Fine Update Multiplier= ",fineUpdateMultiplier);
		writeln("Damage Seed= ",damageSeed);
		writeln("Hitpoints= ",hitpoints);
		writeln("Major Revision Number= ",majorRevisionNumber);
		writeln("Minor Revision Number= ",minorRevisionNumber);
		writeln("Create Priority= ",createPriority);
		writeln("Management Domain= ",managementDomain);
		writeln("Transferable= ",transferable);
		writeln("Private= ",private_);
		writeln("Tangible= ",tangible);
		writeln("Collidable= ",collidable);
		writeln("Global= ",global);
		writeln("Persistent= ",persistent);
		writeln("Padding[1]= ",padding[0]);
		writeln("Padding[2]= ",padding[1]);
		writeln("Padding[3]= ",padding[2]);
		writeln("Vis Type[1]= ",visType[0]);
		writeln("Vis Type[2]= ",visType[1]);
		writeln("Vis Type[3]= ",visType[2]);
		writeln("Vis Type[4]= ",visType[3]);
		writeln("Vis Type[5]= ",visType[4]);
		writeln("Vis Type[6]= ",visType[5]);
		writeln("Vis Type[7]= ",visType[6]);
		writeln("Vehicle Data Index= ",vehicleDataIndex);
		writeln("Data Type= ",dataType);
		writeln("Data Ptr= ",dataPtr);
		writeln("Unknow 1= ",unknow1);
		writeln("Unknow 2= ",unknow2);
		writeln();
		writeln();
	}
	dosya.close();
	readln();
}

