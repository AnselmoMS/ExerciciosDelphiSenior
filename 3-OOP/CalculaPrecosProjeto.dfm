﻿<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
    <PropertyGroup>
        <ProjectGuid>{FC21404E-A4AF-4F91-B36E-FC117DFB3FBD}</ProjectGuid>
        <ProjectVersion>18.8</ProjectVersion>
        <FrameworkType>VCL</FrameworkType>
        <MainSource>CalculaPrecosProjeto.dpr</MainSource>
        <Base>True</Base>
        <Config Condition="'$(Config)'==''">Debug</Config>
        <Platform Condition="'$(Platform)'==''">Win32</Platform>
        <TargetedPlatforms>1</TargetedPlatforms>
        <AppType>Application</AppType>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Base' or '$(Base)'!=''">
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Base)'=='true') or '$(Base_Win32)'!=''">
        <Base_Win32>true</Base_Win32>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win64' and '$(Base)'=='true') or '$(Base_Win64)'!=''">
        <Base_Win64>true</Base_Win64>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Debug' or '$(Cfg_1)'!=''">
        <Cfg_1>true</Cfg_1>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Cfg_1)'=='true') or '$(Cfg_1_Win32)'!=''">
        <Cfg_1_Win32>true</Cfg_1_Win32>
        <CfgParent>Cfg_1</CfgParent>
        <Cfg_1>true</Cfg_1>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Config)'=='Release' or '$(Cfg_2)'!=''">
        <Cfg_2>true</Cfg_2>
        <CfgParent>Base</CfgParent>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="('$(Platform)'=='Win32' and '$(Cfg_2)'=='true') or '$(Cfg_2_Win32)'!=''">
        <Cfg_2_Win32>true</Cfg_2_Win32>
        <CfgParent>Cfg_2</CfgParent>
        <Cfg_2>true</Cfg_2>
        <Base>true</Base>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base)'!=''">
        <DCC_DcuOutput>.\$(Platform)\$(Config)</DCC_DcuOutput>
        <DCC_ExeOutput>.\$(Platform)\$(Config)</DCC_ExeOutput>
        <DCC_E>false</DCC_E>
        <DCC_N>false</DCC_N>
        <DCC_S>false</DCC_S>
        <DCC_F>false</DCC_F>
        <DCC_K>false</DCC_K>
        <DCC_Namespace>System;Xml;Data;Datasnap;Web;Soap;Vcl;Vcl.Imaging;Vcl.Touch;Vcl.Samples;Vcl.Shell;$(DCC_Namespace)</DCC_Namespace>
        <Icon_MainIcon>$(BDS)\bin\delphi_PROJECTICON.ico</Icon_MainIcon>
        <UWP_DelphiLogo44>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_44.png</UWP_DelphiLogo44>
        <UWP_DelphiLogo150>$(BDS)\bin\Artwork\Windows\UWP\delphi_UwpDefault_150.png</UWP_DelphiLogo150>
        <SanitizedProjectName>CalculaPrecosProjeto</SanitizedProjectName>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Win32)'!=''">
        <DCC_UsePackage>DBXSqliteDriver;dxFlowChartRS26;dxPSdxMapControlLnkRS26;vclactnband;dxBarRS26;vclFireDAC;dxFireDACEMFRS26;tethering;dclcxStatusKeeperPackageRS26;FireDACADSDriver;NLDSideBar70;ACBr_BPeDabpeESCPOS;JvPluginSystem;ACBr_BPe;dxRichEditCoreRS26;dxPSdxSpreadSheetLnkRS26;vcltouch;JvBands;ACBr_NFe;vcldb;ACBr_NFeDanfeFR;svn;JvJans;dxPSTeeChartRS26;ACBr_NFeDanfeESCPOS;JvDotNetCtrls;dxGDIPlusRS26;dxPSdxFCLnkRS26;dxCloudServiceLibraryRS26;frxTee26;cxStatusKeeperPackageRS26;dxPSLnksRS26;dxPsPrVwAdvRS26;cxGridRS26;dxPDFViewerRS26;ACBr_NFSeDanfseFR;vclx;dxPScxTLLnkRS26;RESTBackendComponents;ACBr_Reinf;VCLRESTComponents;fsTee26;vclie;bindengine;CloudService;dxmdsRS26;JvHMI;FireDACMySQLDriver;ACBr_PAF;ACBr_SATECFVirtual;frx26;dxdborRS26;dxFireDACServerModeRS26;bindcompdbx;ACBr_TCP;GR32_D;IndyIPServer;ACBr_CTe;cxPivotGridRS26;IndySystem;fsADO26;frxDBX26;cxTreeListdxBarPopupMenuRS26;dsnapcon;cxTreeListRS26;dxPScxPivotGridLnkRS26;ACBre_Social;cxSchedulerRibbonStyleEventEditorRS26;dxPSCoreRS26;FireDACMSAccDriver;fmxFireDAC;dxSpreadSheetRS26;vclimg;ACBr_SPEDImportar;Jcl;dxBarExtItemsRS26;dxPSdxGaugeControlLnkRS26;ACBr_SPED;ACBr_MDFe;ACBr_LFD;dxdbtrRS26;FMXTee;dxRichEditControlCoreRS26;soaprtl;DbxCommonDriver;ACBr_CIOT;dxFlowChartAdvancedCustomizeFormRS26;JvManagedThreads;dxDockingRS26;xmlrtl;soapmidas;JvTimeFramework;fmxobj;cxLibraryRS26;GR32_R;rtl;DbxClientDriver;dxPScxSchedulerLnkRS26;CodeSiteExpressPkg;JvSystem;JvStdCtrls;dxSpreadSheetConditionalFormattingDialogsRS26;ACBr_Convenio115;appanalytics;dxRibbonCustomizationFormRS26;cxSchedulerGridRS26;IndyIPClient;bindcompvcl;dxFlowChartLayoutsRS26;TeeUI;dxADOEMFRS26;JvDocking;JvPascalInterpreter;VclSmp;dcl_ZeusComponents;JclVcl;dxRibbonRS26;dxPScxCommonRS26;dxRichEditDocumentModelRS26;ACBr_Boleto;ACBr_SEF2;dxFlowChartDesignerRS26;JvControls;dxPScxGridLnkRS26;JvPrintPreview;ACBr_MDFeDamdfeFR;ACBr_NFSe;dxSpreadSheetCoreRS26;RESTComponents;DBXInterBaseDriver;ACBr_TEFD;dxPScxExtCommonRS26;ACBr_SATWS;JvGlobus;svnui;JvMM;dxRichEditControlRS26;PngComponentsD;ACBr_EDI;ACBr_ONE;dxorgcRS26;dxGaugeControlRS26;bindcompfmx;JvNet;dxPScxVGridLnkRS26;dxOrgChartAdvancedCustomizeFormRS26;inetdb;JvAppFrm;ACBr_Diversos;RaizeComponentsVcl;dxDBXServerModeRS26;dxBarDBNavRS26;ACBr_GNREGuiaFR;FmxTeeUI;RaizeComponentsVclDb;ACBr_LCDPR;fmx;FireDACIBDriver;fmxdae;DSPack_DXE2;dxServerModeRS26;ACBr_CTeDacteFR;dxWizardControlRS26;JvWizards;dxTabbedMDIRS26;ACBr_Ponto;fs26;dxEMFRS26;dbexpress;IndyCore;dxComnRS26;frxIntIO26;JvPageComps;dsnap;FireDACCommon;Package1;JvDB;cxGridEMFRS26;DelphiUCLPackage;cxSchedulerTreeBrowserRS26;dxADOServerModeRS26;ACBR_DeSTDA;soapserver;ACBr_SAT;JclDeveloperTools;cxPivotGridOLAPRS26;cxVerticalGridRS26;dxtrmdRS26;JvCmp;DBXMySQLDriver;cxSchedulerRS26;cxSchedulerWebServiceStorageRS26;dxPSdxLCLnkRS26;ACBr_Sintegra;FireDACCommonODBC;FireDACCommonDriver;ACBr_GNRE;dxMapControlRS26;frxIntIOIndy26;inet;dxSpellCheckerRS26;IndyIPCommon;JvCustom;dxSpreadSheetCoreConditionalFormattingDialogsRS26;vcl;dxPSdxDBOCLnkRS26;JvXPCtrls;frxDB26;ACBr_SATExtratoESCPOS;dxSpreadSheetReportDesignerRS26;ACBr_Integrador;dxPScxPCProdRS26;dxNavBarRS26;dxCoreRS26;fsDB26;cxExportRS26;TeeDB;FireDAC;NestedComponents;dxHttpIndyRequestRS26;JvCore;dxPSPrVwRibbonRS26;ACBr_Comum;frxe26;JvCrypt;FireDACSqliteDriver;FireDACPgDriver;dxPSRichEditControlLnkRS26;cxPivotGridChartRS26;JvDlgs;JvRuntimeDesign;dxPSDBTeeChartRS26;Tee;dxPSdxDBTVLnkRS26;vclwinx;ACBr_OpenSSL;frxADO26;dxTileControlRS26;dxSkinsCoreRS26;CustomIPTransport;vcldsnap;ZeusComponents;bindcomp;ACBr_Serial;dxPSdxOCLnkRS26;SynEdit_R;ACBr_BlocoX;dbxcds;ACBr_NFCeECFVirtual;adortl;ACBr_BoletoFR;ACBr_ANe;dxBarExtDBItemsRS26;dsnapxml;dbrtl;IndyProtocols;inetdbxpress;dxPSdxPDFViewerLnkRS26;JclContainers;ACBr_MTER;fmxase;$(DCC_UsePackage)</DCC_UsePackage>
        <DCC_Namespace>Winapi;System.Win;Data.Win;Datasnap.Win;Web.Win;Soap.Win;Xml.Win;Bde;$(DCC_Namespace)</DCC_Namespace>
        <BT_BuildType>Debug</BT_BuildType>
        <VerInfo_IncludeVerInfo>true</VerInfo_IncludeVerInfo>
        <VerInfo_Keys>CompanyName=;FileDescription=$(MSBuildProjectName);FileVersion=1.0.0.0;InternalName=;LegalCopyright=;LegalTrademarks=;OriginalFilename=;ProgramID=com.embarcadero.$(MSBuildProjectName);ProductName=$(MSBuildProjectName);ProductVersion=1.0.0.0;Comments=</VerInfo_Keys>
        <VerInfo_Locale>1033</VerInfo_Locale>
        <Manifest_File>$(BDS)\bin\default_app.manifest</Manifest_File>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Base_Win64)'!=''">
        <DCC_UsePackage>DBXSqliteDriver;dxFlowChartRS26;dxPSdxMapControlLnkRS26;vclactnband;dxBarRS26;vclFireDAC;dxFireDACEMFRS26;tethering;FireDACADSDriver;dxRichEditCoreRS26;dxPSdxSpreadSheetLnkRS26;vcltouch;vcldb;dxPSTeeChartRS26;dxGDIPlusRS26;dxPSdxFCLnkRS26;dxCloudServiceLibraryRS26;dxPSLnksRS26;dxPsPrVwAdvRS26;cxGridRS26;dxPDFViewerRS26;vclx;dxPScxTLLnkRS26;RESTBackendComponents;VCLRESTComponents;vclie;bindengine;CloudService;dxmdsRS26;FireDACMySQLDriver;dxdborRS26;dxFireDACServerModeRS26;bindcompdbx;IndyIPServer;cxPivotGridRS26;IndySystem;cxTreeListdxBarPopupMenuRS26;dsnapcon;cxTreeListRS26;dxPScxPivotGridLnkRS26;cxSchedulerRibbonStyleEventEditorRS26;dxPSCoreRS26;FireDACMSAccDriver;fmxFireDAC;dxSpreadSheetRS26;vclimg;dxBarExtItemsRS26;dxPSdxGaugeControlLnkRS26;dxdbtrRS26;FMXTee;dxRichEditControlCoreRS26;soaprtl;DbxCommonDriver;dxFlowChartAdvancedCustomizeFormRS26;dxDockingRS26;xmlrtl;soapmidas;fmxobj;cxLibraryRS26;GR32_R;rtl;DbxClientDriver;dxPScxSchedulerLnkRS26;dxSpreadSheetConditionalFormattingDialogsRS26;appanalytics;dxRibbonCustomizationFormRS26;cxSchedulerGridRS26;IndyIPClient;bindcompvcl;dxFlowChartLayoutsRS26;TeeUI;dxADOEMFRS26;VclSmp;dxRibbonRS26;dxPScxCommonRS26;dxRichEditDocumentModelRS26;dxFlowChartDesignerRS26;dxPScxGridLnkRS26;dxSpreadSheetCoreRS26;RESTComponents;DBXInterBaseDriver;dxPScxExtCommonRS26;dxRichEditControlRS26;PngComponentsD;dxorgcRS26;dxGaugeControlRS26;bindcompfmx;dxPScxVGridLnkRS26;dxOrgChartAdvancedCustomizeFormRS26;inetdb;RaizeComponentsVcl;dxDBXServerModeRS26;dxBarDBNavRS26;FmxTeeUI;RaizeComponentsVclDb;fmx;FireDACIBDriver;fmxdae;dxServerModeRS26;dxWizardControlRS26;dxTabbedMDIRS26;dxEMFRS26;dbexpress;IndyCore;dxComnRS26;dsnap;FireDACCommon;cxGridEMFRS26;cxSchedulerTreeBrowserRS26;dxADOServerModeRS26;soapserver;cxPivotGridOLAPRS26;cxVerticalGridRS26;dxtrmdRS26;DBXMySQLDriver;cxSchedulerRS26;cxSchedulerWebServiceStorageRS26;dxPSdxLCLnkRS26;FireDACCommonODBC;FireDACCommonDriver;dxMapControlRS26;inet;dxSpellCheckerRS26;IndyIPCommon;dxSpreadSheetCoreConditionalFormattingDialogsRS26;vcl;dxPSdxDBOCLnkRS26;dxSpreadSheetReportDesignerRS26;dxPScxPCProdRS26;dxNavBarRS26;dxCoreRS26;cxExportRS26;TeeDB;FireDAC;dxHttpIndyRequestRS26;dxPSPrVwRibbonRS26;FireDACSqliteDriver;FireDACPgDriver;dxPSRichEditControlLnkRS26;cxPivotGridChartRS26;dxPSDBTeeChartRS26;Tee;dxPSdxDBTVLnkRS26;vclwinx;dxTileControlRS26;dxSkinsCoreRS26;CustomIPTransport;vcldsnap;bindcomp;dxPSdxOCLnkRS26;SynEdit_R;dbxcds;adortl;dxBarExtDBItemsRS26;dsnapxml;dbrtl;IndyProtocols;inetdbxpress;dxPSdxPDFViewerLnkRS26;fmxase;$(DCC_UsePackage)</DCC_UsePackage>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1)'!=''">
        <DCC_Define>DEBUG;$(DCC_Define)</DCC_Define>
        <DCC_DebugDCUs>true</DCC_DebugDCUs>
        <DCC_Optimize>false</DCC_Optimize>
        <DCC_GenerateStackFrames>true</DCC_GenerateStackFrames>
        <DCC_DebugInfoInExe>true</DCC_DebugInfoInExe>
        <DCC_RemoteDebug>true</DCC_RemoteDebug>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_1_Win32)'!=''">
        <DCC_RemoteDebug>false</DCC_RemoteDebug>
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <AppDPIAwarenessMode>PerMonitorV2</AppDPIAwarenessMode>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_2)'!=''">
        <DCC_LocalDebugSymbols>false</DCC_LocalDebugSymbols>
        <DCC_Define>RELEASE;$(DCC_Define)</DCC_Define>
        <DCC_SymbolReferenceInfo>0</DCC_SymbolReferenceInfo>
        <DCC_DebugInformation>0</DCC_DebugInformation>
    </PropertyGroup>
    <PropertyGroup Condition="'$(Cfg_2_Win32)'!=''">
        <AppEnableRuntimeThemes>true</AppEnableRuntimeThemes>
        <AppDPIAwarenessMode>PerMonitorV2</AppDPIAwarenessMode>
    </PropertyGroup>
    <ItemGroup>
        <DelphiCompile Include="$(MainSource)">
            <MainSource>MainSource</MainSource>
        </DelphiCompile>
        <DCCReference Include="CalcularPreco.Interfaces.pas"/>
        <DCCReference Include="CalculaPrecos.Form.pas">
            <Form>frmCalculaPreco</Form>
            <FormType>dfm</FormType>
        </DCCReference>
        <DCCReference Include="CalcularPreco.Tipos.pas"/>
        <DCCReference Include="CalcularPreco.Helper.pas"/>
        <DCCReference Include="CalcularPreco.Calculadora.pas"/>
        <DCCReference Include="CalcularPreco.Constantes.pas"/>
        <DCCReference Include="CalcularPreco.Parametros.pas"/>
        <DCCReference Include="CalcularPreco.Operacoes.pas"/>
        <DCCReference Include="CalcularPreco.Calculadora.Atacado.pas"/>
        <DCCReference Include="CalcularPreco.Calculadora.Varejo.pas"/>
        <DCCReference Include="CalcularPreco.Calculadora.Feriado.pas"/>
        <DCCReference Include="CalcularPreco.Controller.Interfaces.pas"/>
        <DCCReference Include="CalcularPreco.CalculadoraDePrecoController.pas"/>
        <BuildConfiguration Include="Release">
            <Key>Cfg_2</Key>
            <CfgParent>Base</CfgParent>
        </BuildConfiguration>
        <BuildConfiguration Include="Base">
            <Key>Base</Key>
        </BuildConfiguration>
        <BuildConfiguration Include="Debug">
            <Key>Cfg_1</Key>
            <CfgParent>Base</CfgParent>
        </BuildConfiguration>
    </ItemGroup>
    <ProjectExtensions>
        <Borland.Personality>Delphi.Personality.12</Borland.Personality>
        <Borland.ProjectType>Application</Borland.ProjectType>
        <BorlandProject>
            <Delphi.Personality>
                <Source>
                    <Source Name="MainSource">CalculaPrecosProjeto.dpr</Source>
                </Source>
            </Delphi.Personality>
            <Deployment Version="3">
                <DeployFile LocalName="Win32\Debug\CalculaPrecosProjeto.exe" Configuration="Debug" Class="ProjectOutput">
                    <Platform Name="Win32">
                        <RemoteName>CalculaPrecosProjeto.exe</RemoteName>
                        <Overwrite>true</Overwrite>
                    </Platform>
                </DeployFile>
                <DeployClass Name="AdditionalDebugSymbols">
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidClassesDexFile">
                    <Platform Name="Android">
                        <RemoteDir>classes</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>classes</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidFileProvider">
                    <Platform Name="Android">
                        <RemoteDir>res\xml</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\xml</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidGDBServer">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidLibnativeArmeabiFile">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidLibnativeArmeabiv7aFile">
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidLibnativeMipsFile">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\mips</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\mips</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidServiceOutput">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\arm64-v8a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidServiceOutput_Android32">
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidSplashImageDef">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidSplashStyles">
                    <Platform Name="Android">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="AndroidSplashStylesV21">
                    <Platform Name="Android">
                        <RemoteDir>res\values-v21</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values-v21</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_Colors">
                    <Platform Name="Android">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_DefaultAppIcon">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon144">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon36">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-ldpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-ldpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon48">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon72">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_LauncherIcon96">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon24">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-mdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon36">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-hdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon48">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon72">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_NotificationIcon96">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xxxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xxxhdpi</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage426">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-small</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-small</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage470">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-normal</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-normal</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage640">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-large</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-large</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_SplashImage960">
                    <Platform Name="Android">
                        <RemoteDir>res\drawable-xlarge</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\drawable-xlarge</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="Android_Strings">
                    <Platform Name="Android">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>res\values</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="DebugSymbols">
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="DependencyFramework">
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.framework</Extensions>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.framework</Extensions>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="DependencyModule">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                        <Extensions>.dll;.bpl</Extensions>
                    </Platform>
                </DeployClass>
                <DeployClass Required="true" Name="DependencyPackage">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                        <Extensions>.dylib</Extensions>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                        <Extensions>.bpl</Extensions>
                    </Platform>
                </DeployClass>
                <DeployClass Name="File">
                    <Platform Name="Android">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="iOSDevice32">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\Resources\StartUp\</RemoteDir>
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\Resources\StartUp\</RemoteDir>
                        <Operation>0</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch1024x768">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch1536x2048">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch1668">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch1668x2388">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch2048x1536">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch2048x2732">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch2224">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch2388x1668">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch2732x2048">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPad_Launch768x1024">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch1125">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch1136x640">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch1242">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch1242x2688">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch1334">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch1792">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch2208">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch2436">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch2688x1242">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch320">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch640">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch640x1136">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch750">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="iPhone_Launch828">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectAndroidManifest">
                    <Platform Name="Android">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSDeviceDebug">
                    <Platform Name="iOSDevice32">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSDeviceResourceRules">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSEntitlements">
                    <Platform Name="iOSDevice32">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSInfoPList">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectiOSResource">
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXDebug">
                    <Platform Name="OSX64">
                        <RemoteDir>..\$(PROJECTNAME).app.dSYM\Contents\Resources\DWARF</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXEntitlements">
                    <Platform Name="OSX32">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>..\</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXInfoPList">
                    <Platform Name="OSX32">
                        <RemoteDir>Contents</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOSXResource">
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\Resources</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\Resources</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Required="true" Name="ProjectOutput">
                    <Platform Name="Android">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\arm64-v8a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSDevice64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="iOSSimulator">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Linux64">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX32">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="OSX64">
                        <RemoteDir>Contents\MacOS</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win32">
                        <Operation>0</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectOutput_Android32">
                    <Platform Name="Android64">
                        <RemoteDir>library\lib\armeabi-v7a</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="ProjectUWPManifest">
                    <Platform Name="Win32">
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win64">
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="UWP_DelphiLogo150">
                    <Platform Name="Win32">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win64">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <DeployClass Name="UWP_DelphiLogo44">
                    <Platform Name="Win32">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                    <Platform Name="Win64">
                        <RemoteDir>Assets</RemoteDir>
                        <Operation>1</Operation>
                    </Platform>
                </DeployClass>
                <ProjectRoot Platform="iOSDevice64" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="Win64" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="iOSDevice32" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="Linux64" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="Win32" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="OSX32" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="Android" Name="$(PROJECTNAME)"/>
                <ProjectRoot Platform="OSX64" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="iOSSimulator" Name="$(PROJECTNAME).app"/>
                <ProjectRoot Platform="Android64" Name="$(PROJECTNAME)"/>
            </Deployment>
            <Platforms>
                <Platform value="Win32">True</Platform>
                <Platform value="Win64">False</Platform>
            </Platforms>
        </BorlandProject>
        <ProjectFileVersion>12</ProjectFileVersion>
    </ProjectExtensions>
    <Import Project="$(BDS)\Bin\CodeGear.Delphi.Targets" Condition="Exists('$(BDS)\Bin\CodeGear.Delphi.Targets')"/>
    <Import Project="$(APPDATA)\Embarcadero\$(BDSAPPDATABASEDIR)\$(PRODUCTVERSION)\UserTools.proj" Condition="Exists('$(APPDATA)\Embarcadero\$(BDSAPPDATABASEDIR)\$(PRODUCTVERSION)\UserTools.proj')"/>
    <Import Project="$(MSBuildProjectName).deployproj" Condition="Exists('$(MSBuildProjectName).deployproj')"/>
</Project>
