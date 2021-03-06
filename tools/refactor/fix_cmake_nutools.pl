use strict;

use vars qw(%dir_list);
BEGIN { %dir_list = (
        "art_Persistency_Common" => "art_Persistency_Common canvas_Persistency_Common",
        "art_Persistency_Provenance" => "art_Persistency_Provenance canvas_Persistency_Provenance",
        "art_Persistency_Common_dict" => "canvas_Persistency_Common_dict",
        "art_Persistency_StdDictionaries" => "canvas_Persistency_StdDictionaries",
        "art_Persistency_StdDictionaries_dict" => "canvas_Persistency_StdDictionaries_dict",
        "art_Persistency_WrappedStdDictionaries" => "canvas_Persistency_WrappedStdDictionaries",
        "art_Persistency_WrappedStdDictionaries_dict" => "canvas_Persistency_WrappedStdDictionaries_dict",
        "art_Utilities" => "art_Utilities canvas_Utilities",
	"Colors_service" => "nutools_EventDisplayBase_Colors_service",
	"DBI_service" => "nutools_IFDatabase_DBI_service",
	"EventDisplayBase" => "nutools_EventDisplayBase",
	"EventDisplay_service" => "nutools_EventDisplayBase_EventDisplay_service",
	"EventGeneratorBaseCRY" => "nutools_EventGeneratorBase_CRY",
	"EventGeneratorBaseGENIE" => "nutools_EventGeneratorBase_GENIE",
	"EventGeneratorBaseGiBUU" => "nutools_EventGeneratorBase_GiBUU",
	"EventGeneratorBase_test_EventGeneratorTest_module" => "nutools_EventGeneratorBase_test_EventGeneratorTest_module",
	"G4Base" => "nutools_G4Base",
	"IFDatabase" => "nutools_IFDatabase",
	"MagneticField_service" => "nutools_MagneticField_MagneticField_service",
	"NuBeamWeights" => "nutools_NuBeamWeights",
	"NuReweightArt" => "nutools_NuReweight_art",
	"NuReweight" => "nutools_NuReweight",
	"ReweightAna_module" => "nutools_NuReweight_art_ReweightAna_module",
	"ScanOptions_service" => "nutools_EventDisplayBase_ScanOptions_service",
	"SimulationBase_dict" => "nutools_SimulationBase_dict",
	"SimulationBase" => "nusimdata_SimulationBase"
		       ); }

foreach my $lib (sort keys %dir_list) {
   next if m&add_subdirectory&i;
   next if m&simple_plugin&i;
   next if m&SUBDIRNAME&i;
   next if m&SUBDIRS&i;
   next if m&LIBRARY_NAME&i;
   next if m&PACKAGE&i;
  #s&\b\Q${lib}\E([^\.\s]*\b)([^\.]|$)&$dir_list{$lib}${1}${2}&g and last;
  s&\b\Q${lib}\E\b([^\.]|$)&$dir_list{$lib}${1}${2}&g and last;
}

#s&\$\{SIMULATIONBASE\}&nusimdata_SimulationBase&g;
