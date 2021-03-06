use strict;

use vars qw(%inc_translations $g4physics_list);
BEGIN { %inc_translations = (
		"art/Framework/Core/FindOne.h" => "canvas/Persistency/Common/FindOne.h",
		"art/Framework/Core/FindOneP.h" => "canvas/Persistency/Common/FindOneP.h",
		"art/Framework/Core/FindMany.h" => "canvas/Persistency/Common/FindMany.h",
		"art/Framework/Core/FindManyP.h" => "canvas/Persistency/Common/FindManyP.h",
		"art/Framework/Core/detail/IPRHelper.h" => "canvas/Persistency/Common/detail/IPRHelper.h",
		"art/Framework/IO/Root/RefCoreStreamer.h" => "canvas/Persistency/Common/RefCoreStreamer.h",
		"art/Framework/IO/Root/rootNames.h" => "canvas/Persistency/Provenance/rootNames.h",
		"art/Persistency/CLHEPDictionaries/classes.h" => "canvas/Persistency/CLHEPDictionaries/classes.h",
		"art/Persistency/CetlibDictionaries/classes.h" => "canvas/Persistency/CetlibDictionaries/classes.h",
		"art/Persistency/Common/Assns.h" => "canvas/Persistency/Common/Assns.h",
		"art/Persistency/Common/BoolCache.h" => "canvas/Persistency/Common/BoolCache.h",
		"art/Persistency/Common/CacheStreamers.h" => "canvas/Persistency/Common/CacheStreamers.h",
		"art/Persistency/Common/ConstPtrCache.h" => "canvas/Persistency/Common/ConstPtrCache.h",
		"art/Persistency/Common/EDProduct.h" => "canvas/Persistency/Common/EDProduct.h",
		"art/Persistency/Common/EDProductGetter.h" => "canvas/Persistency/Common/EDProductGetter.h",
		"art/Persistency/Common/GetProduct.h" => "canvas/Persistency/Common/GetProduct.h",
		"art/Persistency/Common/HLTGlobalStatus.h" => "canvas/Persistency/Common/HLTGlobalStatus.h",
		"art/Persistency/Common/HLTPathStatus.h" => "canvas/Persistency/Common/HLTPathStatus.h",
		"art/Persistency/Common/HLTenums.h" => "canvas/Persistency/Common/HLTenums.h",
		"art/Persistency/Common/Ptr.h" => "canvas/Persistency/Common/Ptr.h",
		"art/Persistency/Common/PtrVector.h" => "canvas/Persistency/Common/PtrVector.h",
		"art/Persistency/Common/PtrVectorBase.h" => "canvas/Persistency/Common/PtrVectorBase.h",
		"art/Persistency/Common/RNGsnapshot.h" => "canvas/Persistency/Common/RNGsnapshot.h",
		"art/Persistency/Common/RefCore.h" => "canvas/Persistency/Common/RefCore.h",
		"art/Persistency/Common/TriggerResults.h" => "canvas/Persistency/Common/TriggerResults.h",
		"art/Persistency/Common/Wrapper.h" => "canvas/Persistency/Common/Wrapper.h",
		"art/Persistency/Common/classes.h" => "canvas/Persistency/Common/classes.h",
		"art/Persistency/Common/detail/maybeCastObj.h" => "canvas/Persistency/Common/detail/maybeCastObj.h",
		"art/Persistency/Common/detail/setPtrVectorBaseStreamer.h" => "canvas/Persistency/Common/detail/setPtrVectorBaseStreamer.h",
		"art/Persistency/Common/getElementAddresses.h" => "canvas/Persistency/Common/getElementAddresses.h",
		"art/Persistency/Common/setPtr.h" => "canvas/Persistency/Common/setPtr.h",
		"art/Persistency/Common/traits.h" => "canvas/Persistency/Common/traits.h",
		"art/Persistency/FhiclCppDictionaries/classes.h" => "canvas/Persistency/FhiclCppDictionaries/classes.h",
		"art/Persistency/Provenance/BranchChildren.h" => "canvas/Persistency/Provenance/BranchChildren.h",
		"art/Persistency/Provenance/BranchDescription.h" => "canvas/Persistency/Provenance/BranchDescription.h",
		"art/Persistency/Provenance/BranchID.h" => "canvas/Persistency/Provenance/BranchID.h",
		"art/Persistency/Provenance/BranchIDList.h" => "canvas/Persistency/Provenance/BranchIDList.h",
		"art/Persistency/Provenance/BranchKey.h" => "canvas/Persistency/Provenance/BranchKey.h",
		"art/Persistency/Provenance/BranchListIndex.h" => "canvas/Persistency/Provenance/BranchListIndex.h",
		"art/Persistency/Provenance/BranchMapper.h" => "canvas/Persistency/Provenance/BranchMapper.h",
		"art/Persistency/Provenance/BranchType.h" => "canvas/Persistency/Provenance/BranchType.h",
		"art/Persistency/Provenance/EventAuxiliary.h" => "canvas/Persistency/Provenance/EventAuxiliary.h",
		"art/Persistency/Provenance/EventID.h" => "canvas/Persistency/Provenance/EventID.h",
		"art/Persistency/Provenance/EventSelectionID.h" => "canvas/Persistency/Provenance/EventSelectionID.h",
		"art/Persistency/Provenance/FileFormatVersion.h" => "canvas/Persistency/Provenance/FileFormatVersion.h",
		"art/Persistency/Provenance/FileIndex.h" => "canvas/Persistency/Provenance/FileIndex.h",
		"art/Persistency/Provenance/Hash.h" => "canvas/Persistency/Provenance/Hash.h",
		"art/Persistency/Provenance/HashedTypes.h" => "canvas/Persistency/Provenance/HashedTypes.h",
		"art/Persistency/Provenance/History.h" => "canvas/Persistency/Provenance/History.h",
		"art/Persistency/Provenance/ModuleDescription.h" => "canvas/Persistency/Provenance/ModuleDescription.h",
		"art/Persistency/Provenance/ModuleDescriptionID.h" => "canvas/Persistency/Provenance/ModuleDescriptionID.h",
		"art/Persistency/Provenance/ParameterSetBlob.h" => "canvas/Persistency/Provenance/ParameterSetBlob.h",
		"art/Persistency/Provenance/ParameterSetMap.h" => "canvas/Persistency/Provenance/ParameterSetMap.h",
		"art/Persistency/Provenance/Parentage.h" => "canvas/Persistency/Provenance/Parentage.h",
		"art/Persistency/Provenance/ParentageID.h" => "canvas/Persistency/Provenance/ParentageID.h",
		"art/Persistency/Provenance/ParentageRegistry.h" => "canvas/Persistency/Provenance/ParentageRegistry.h",
		"art/Persistency/Provenance/PassID.h" => "canvas/Persistency/Provenance/PassID.h",
		"art/Persistency/Provenance/ProcessConfiguration.h" => "canvas/Persistency/Provenance/ProcessConfiguration.h",
		"art/Persistency/Provenance/ProcessConfigurationID.h" => "canvas/Persistency/Provenance/ProcessConfigurationID.h",
		"art/Persistency/Provenance/ProcessHistory.h" => "canvas/Persistency/Provenance/ProcessHistory.h",
		"art/Persistency/Provenance/ProcessHistoryID.h" => "canvas/Persistency/Provenance/ProcessHistoryID.h",
		"art/Persistency/Provenance/ProductID.h" => "canvas/Persistency/Provenance/ProductID.h",
		"art/Persistency/Provenance/ProductList.h" => "canvas/Persistency/Provenance/ProductList.h",
		"art/Persistency/Provenance/ProductProvenance.h" => "canvas/Persistency/Provenance/ProductProvenance.h",
		"art/Persistency/Provenance/ProductRegistry.h" => "canvas/Persistency/Provenance/ProductRegistry.h",
		"art/Persistency/Provenance/ProductStatus.h" => "canvas/Persistency/Provenance/ProductStatus.h",
		"art/Persistency/Provenance/ProvenanceFwd.h" => "canvas/Persistency/Provenance/ProvenanceFwd.h",
		"art/Persistency/Provenance/ReleaseVersion.h" => "canvas/Persistency/Provenance/ReleaseVersion.h",
		"art/Persistency/Provenance/ResultsAuxiliary.h" => "canvas/Persistency/Provenance/ResultsAuxiliary.h",
		"art/Persistency/Provenance/RunAuxiliary.h" => "canvas/Persistency/Provenance/RunAuxiliary.h",
		"art/Persistency/Provenance/RunID.h" => "canvas/Persistency/Provenance/RunID.h",
		"art/Persistency/Provenance/SortInvalidFirst.h" => "canvas/Persistency/Provenance/SortInvalidFirst.h",
		"art/Persistency/Provenance/SubRunAuxiliary.h" => "canvas/Persistency/Provenance/SubRunAuxiliary.h",
		"art/Persistency/Provenance/SubRunID.h" => "canvas/Persistency/Provenance/SubRunID.h",
		"art/Persistency/Provenance/Timestamp.h" => "canvas/Persistency/Provenance/Timestamp.h",
		"art/Persistency/Provenance/Transient.h" => "canvas/Persistency/Provenance/Transient.h",
		"art/Persistency/Provenance/TransientStreamer.h" => "canvas/Persistency/Provenance/TransientStreamer.h",
		"art/Persistency/Provenance/TypeLabel.h" => "canvas/Persistency/Provenance/TypeLabel.h",
		"art/Persistency/Provenance/TypeTools.h" => "canvas/Persistency/Provenance/TypeTools.h",
		"art/Persistency/Provenance/TypeWithDict.h" => "canvas/Persistency/Provenance/TypeWithDict.h",
		"art/Persistency/Provenance/classes.h" => "canvas/Persistency/Provenance/classes.h",
		"art/Persistency/Provenance/ParameterSetID.h" => "canvas/Persistency/Provenance/ParameterSetID.h",
		"art/Persistency/StdDictionaries/classes.h" => "canvas/Persistency/StdDictionaries/classes.h",
		"art/Persistency/WrappedStdDictionaries/classes.h" => "canvas/Persistency/WrappedStdDictionaries/classes.h",
		"art/Utilities/DebugMacros.h" => "canvas/Utilities/DebugMacros.h",
		"art/Utilities/Exception.h" => "canvas/Utilities/Exception.h",
		"art/Utilities/FriendlyName.h" => "canvas/Utilities/FriendlyName.h",
		"art/Utilities/GetPassID.h" => "canvas/Utilities/GetPassID.h",
		"art/Utilities/InputTag.h" => "canvas/Utilities/InputTag.h",
		"art/Utilities/TestHelper.h" => "canvas/Utilities/TestHelper.h",
		"art/Utilities/TypeID.h" => "canvas/Utilities/TypeID.h",
		"art/Utilities/WrappedClassName.h" => "canvas/Utilities/WrappedClassName.h",
		"art/Utilities/detail/metaprogramming.h" => "canvas/Utilities/detail/metaprogramming.h",
		"art/Utilities/ensurePointer.h" => "canvas/Utilities/ensurePointer.h",
		"art/Utilities/uniform_type_name.h" => "canvas/Utilities/uniform_type_name.h",
		"boost/test/auto_unit_test.hpp" => "cetlib/quiet_unit_test.hpp",
		"EventGeneratorBase/CRY/CRYHelper.h"  => "nutools/EventGeneratorBase/CRY/CRYHelper.h",
		"EventGeneratorBase/GENIE/GENIEHelper.h"  => "nutools/EventGeneratorBase/GENIE/GENIEHelper.h",
		"EventGeneratorBase/GiBUU/GiBUUHelper.h"  => "nutools/EventGeneratorBase/GiBUU/GiBUUHelper.h",
		"EventGeneratorBase/evgenbase.h"  => "nutools/EventGeneratorBase/evgenbase.h",
		"IFDatabase/DBIService.h"  => "nutools/IFDatabase/DBIService.h",
		"IFDatabase/ColumnDef.h"  => "nutools/IFDatabase/ColumnDef.h",
		"IFDatabase/Column.h"  => "nutools/IFDatabase/Column.h",
		"IFDatabase/Util.h"  => "nutools/IFDatabase/Util.h",
		"IFDatabase/Row.h"  => "nutools/IFDatabase/Row.h",
		"IFDatabase/DataType.h"  => "nutools/IFDatabase/DataType.h",
		"IFDatabase/Table.h"  => "nutools/IFDatabase/Table.h",
		"NuBeamWeights/Conventions.h"  => "nutools/NuBeamWeights/Conventions.h",
		"NuBeamWeights/skzpReweight.h"  => "nutools/NuBeamWeights/skzpReweight.h",
		"EventDisplayBase/ScanWindow.h"  => "nutools/EventDisplayBase/ScanWindow.h",
		"EventDisplayBase/EventDisplay.h"  => "nutools/EventDisplayBase/EventDisplay.h",
		"EventDisplayBase/LinkDef.h"  => "nutools/EventDisplayBase/LinkDef.h",
		"EventDisplayBase/JobMenu.h"  => "nutools/EventDisplayBase/JobMenu.h",
		"EventDisplayBase/ScanOptions.h"  => "nutools/EventDisplayBase/ScanOptions.h",
		"EventDisplayBase/EventHolder.h"  => "nutools/EventDisplayBase/EventHolder.h",
		"EventDisplayBase/ParameterSetEdit.h"  => "nutools/EventDisplayBase/ParameterSetEdit.h",
		"EventDisplayBase/Colors.h"  => "nutools/EventDisplayBase/Colors.h",
		"EventDisplayBase/WindowMenu.h"  => "nutools/EventDisplayBase/WindowMenu.h",
		"EventDisplayBase/FileMenu.h"  => "nutools/EventDisplayBase/FileMenu.h",
		"EventDisplayBase/ListWindow.h"  => "nutools/EventDisplayBase/ListWindow.h",
		"EventDisplayBase/Functors.h"  => "nutools/EventDisplayBase/Functors.h",
		"EventDisplayBase/DisplayWindow.h"  => "nutools/EventDisplayBase/DisplayWindow.h",
		"EventDisplayBase/ObjListCanvas.h"  => "nutools/EventDisplayBase/ObjListCanvas.h",
		"EventDisplayBase/View2D.h"  => "nutools/EventDisplayBase/View2D.h",
		"EventDisplayBase/EditMenu.h"  => "nutools/EventDisplayBase/EditMenu.h",
		"EventDisplayBase/NavState.h"  => "nutools/EventDisplayBase/NavState.h",
		"EventDisplayBase/Canvas.h"  => "nutools/EventDisplayBase/Canvas.h",
		"EventDisplayBase/MenuBar.h"  => "nutools/EventDisplayBase/MenuBar.h",
		"EventDisplayBase/View3D.h"  => "nutools/EventDisplayBase/View3D.h",
		"EventDisplayBase/StatusBar.h"  => "nutools/EventDisplayBase/StatusBar.h",
		"EventDisplayBase/HelpMenu.h"  => "nutools/EventDisplayBase/HelpMenu.h",
		"EventDisplayBase/ButtonBar.h"  => "nutools/EventDisplayBase/ButtonBar.h",
		"EventDisplayBase/ColorScale.h"  => "nutools/EventDisplayBase/ColorScale.h",
		"EventDisplayBase/PrintDialog.h"  => "nutools/EventDisplayBase/PrintDialog.h",
		"EventDisplayBase/ParameterSetEditDialog.h"  => "nutools/EventDisplayBase/ParameterSetEditDialog.h",
		"EventDisplayBase/ServiceTable.h"  => "nutools/EventDisplayBase/ServiceTable.h",
		"EventDisplayBase/RootEnv.h"  => "nutools/EventDisplayBase/RootEnv.h",
		"EventDisplayBase/Printable.h"  => "nutools/EventDisplayBase/Printable.h",
		"EventDisplayBase/evdb.h"  => "nutools/EventDisplayBase/evdb.h",
		"G4Base/PrimaryParticleInformation.h"  => "nutools/G4Base/PrimaryParticleInformation.h",
		"G4Base/UserActionFactory.h"  => "nutools/G4Base/UserActionFactory.h",
		"G4Base/G4Helper.h"  => "nutools/G4Base/G4Helper.h",
		"G4Base/DetectorConstruction.h"  => "nutools/G4Base/DetectorConstruction.h",
		"G4Base/ExampleAction.h"  => "nutools/G4Base/ExampleAction.h",
		"G4Base/UserAction.h"  => "nutools/G4Base/UserAction.h",
		"G4Base/UserActionManager.h"  => "nutools/G4Base/UserActionManager.h",
		"G4Base/ConvertMCTruthToG4.h"  => "nutools/G4Base/ConvertMCTruthToG4.h",
		"MagneticField/MagneticField.h"  => "nutools/MagneticField/MagneticField.h",
		"NuReweight/art/NuReweight.h"  => "nutools/NuReweight/art/NuReweight.h",
		"NuReweight/GENIEReweight.h"  => "nutools/NuReweight/GENIEReweight.h",
		"NuReweight/ReweightLabels.h"  => "nutools/NuReweight/ReweightLabels.h",
		"G4Base/G4PhysicsProcessFactorySingleton.hh"  => "nutools/G4Base/G4PhysicsProcessFactorySingleton.hh",
		"G4Base/G4PhysListFactory.hh"  => "nutools/G4Base/G4PhysListFactory.hh",
		"G4Base/G4PhysListFactorySingleton.hh"  => "nutools/G4Base/G4PhysListFactorySingleton.hh",
		"G4Base/G4PhysicsProcessRegisterOld.icc"  => "nutools/G4Base/G4PhysicsProcessRegisterOld.icc",
		"G4Base/G4PhysListRegisterOld.icc"  => "nutools/G4Base/G4PhysListRegisterOld.icc",
		"SimulationBase/GTruth.h" => "nusimdata/SimulationBase/GTruth.h",
		"SimulationBase/MCFlux.h" => "nusimdata/SimulationBase/MCFlux.h",
		"SimulationBase/MCNeutrino.h" => "nusimdata/SimulationBase/MCNeutrino.h",
		"SimulationBase/MCParticle.h" => "nusimdata/SimulationBase/MCParticle.h",
		"SimulationBase/MCTrajectory.h" => "nusimdata/SimulationBase/MCTrajectory.h",
		"SimulationBase/MCTruth.h" => "nusimdata/SimulationBase/MCTruth.h",
		"SimulationBase/classes.h" => "nusimdata/SimulationBase/classes.h",
                            );

      }

# since we do not build G4NuPhysicsLists, we do not translate anything
# this is for future reference
BEGIN { %g4physics_list = (
 		"G4NuPhysicsLists/HadronPhysicsNuBeam.hh"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/HadronPhysicsNuBeam.hh",
		"G4NuPhysicsLists/G4PhysicsProcessFactorySingleton.hh"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/G4PhysicsProcessFactorySingleton.hh",
		"G4NuPhysicsLists/G4PhysListFactory.hh"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/G4PhysListFactory.hh",
		"G4NuPhysicsLists/QGSPStrFragmLundProtonBuilder.hh"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/QGSPStrFragmLundProtonBuilder.hh",
		"G4NuPhysicsLists/G4PhysListFactorySingleton.hh"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/G4PhysListFactorySingleton.hh",
		"G4NuPhysicsLists/NuBeam.hh"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/NuBeam.hh",
		"G4NuPhysicsLists/G4PhysicsProcessRegisterOld.icc"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/G4PhysicsProcessRegisterOld.icc",
		"G4NuPhysicsLists/G4PhysListRegisterOld.icc"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/G4PhysListRegisterOld.icc",
		"G4NuPhysicsLists/NuBeam.icc"  => "nutools/G4NuPhysicsLists/include/G4NuPhysicsLists/NuBeam.icc",
                           );

      }

foreach my $inc (sort keys %inc_translations) {
  s&^(\s*#include\s+["<])\Q$inc\E(.*)&${1}$inc_translations{$inc}${2}& and last;
}



### Local Variables:
### mode: cperl
### End:
