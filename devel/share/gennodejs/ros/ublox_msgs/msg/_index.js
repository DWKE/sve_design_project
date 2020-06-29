
"use strict";

let NavDGPS_SV = require('./NavDGPS_SV.js');
let CfgNAVX5 = require('./CfgNAVX5.js');
let NavSBAS = require('./NavSBAS.js');
let NavTIMEGPS = require('./NavTIMEGPS.js');
let EsfRAW_Block = require('./EsfRAW_Block.js');
let CfgDGNSS = require('./CfgDGNSS.js');
let NavRELPOSNED = require('./NavRELPOSNED.js');
let NavATT = require('./NavATT.js');
let MonVER = require('./MonVER.js');
let MonVER_Extension = require('./MonVER_Extension.js');
let RxmRAW = require('./RxmRAW.js');
let NavSVINFO_SV = require('./NavSVINFO_SV.js');
let RxmRAWX_Meas = require('./RxmRAWX_Meas.js');
let NavSAT = require('./NavSAT.js');
let CfgINF = require('./CfgINF.js');
let NavPOSECEF = require('./NavPOSECEF.js');
let UpdSOS_Ack = require('./UpdSOS_Ack.js');
let HnrPVT = require('./HnrPVT.js');
let RxmSFRBX = require('./RxmSFRBX.js');
let NavPOSLLH = require('./NavPOSLLH.js');
let RxmALM = require('./RxmALM.js');
let CfgGNSS = require('./CfgGNSS.js');
let MonGNSS = require('./MonGNSS.js');
let NavCLOCK = require('./NavCLOCK.js');
let CfgNMEA6 = require('./CfgNMEA6.js');
let MonHW = require('./MonHW.js');
let NavVELNED = require('./NavVELNED.js');
let CfgRST = require('./CfgRST.js');
let NavSVIN = require('./NavSVIN.js');
let CfgNMEA = require('./CfgNMEA.js');
let NavSBAS_SV = require('./NavSBAS_SV.js');
let CfgRATE = require('./CfgRATE.js');
let CfgSBAS = require('./CfgSBAS.js');
let NavDGPS = require('./NavDGPS.js');
let Inf = require('./Inf.js');
let MgaGAL = require('./MgaGAL.js');
let CfgHNR = require('./CfgHNR.js');
let RxmSFRB = require('./RxmSFRB.js');
let RxmEPH = require('./RxmEPH.js');
let AidEPH = require('./AidEPH.js');
let CfgINF_Block = require('./CfgINF_Block.js');
let NavPVT7 = require('./NavPVT7.js');
let RxmSVSI_SV = require('./RxmSVSI_SV.js');
let RxmRAW_SV = require('./RxmRAW_SV.js');
let NavSVINFO = require('./NavSVINFO.js');
let NavSTATUS = require('./NavSTATUS.js');
let NavTIMEUTC = require('./NavTIMEUTC.js');
let Ack = require('./Ack.js');
let CfgTMODE3 = require('./CfgTMODE3.js');
let RxmSVSI = require('./RxmSVSI.js');
let NavVELECEF = require('./NavVELECEF.js');
let TimTM2 = require('./TimTM2.js');
let CfgNMEA7 = require('./CfgNMEA7.js');
let NavDOP = require('./NavDOP.js');
let CfgANT = require('./CfgANT.js');
let MonHW6 = require('./MonHW6.js');
let UpdSOS = require('./UpdSOS.js');
let RxmRAWX = require('./RxmRAWX.js');
let RxmRTCM = require('./RxmRTCM.js');
let CfgDAT = require('./CfgDAT.js');
let AidHUI = require('./AidHUI.js');
let EsfRAW = require('./EsfRAW.js');
let NavPVT = require('./NavPVT.js');
let NavSAT_SV = require('./NavSAT_SV.js');
let CfgMSG = require('./CfgMSG.js');
let CfgCFG = require('./CfgCFG.js');
let AidALM = require('./AidALM.js');
let CfgGNSS_Block = require('./CfgGNSS_Block.js');
let NavSOL = require('./NavSOL.js');
let EsfMEAS = require('./EsfMEAS.js');
let CfgUSB = require('./CfgUSB.js');
let EsfSTATUS_Sens = require('./EsfSTATUS_Sens.js');
let CfgPRT = require('./CfgPRT.js');
let CfgNAV5 = require('./CfgNAV5.js');
let EsfINS = require('./EsfINS.js');
let EsfSTATUS = require('./EsfSTATUS.js');

module.exports = {
  NavDGPS_SV: NavDGPS_SV,
  CfgNAVX5: CfgNAVX5,
  NavSBAS: NavSBAS,
  NavTIMEGPS: NavTIMEGPS,
  EsfRAW_Block: EsfRAW_Block,
  CfgDGNSS: CfgDGNSS,
  NavRELPOSNED: NavRELPOSNED,
  NavATT: NavATT,
  MonVER: MonVER,
  MonVER_Extension: MonVER_Extension,
  RxmRAW: RxmRAW,
  NavSVINFO_SV: NavSVINFO_SV,
  RxmRAWX_Meas: RxmRAWX_Meas,
  NavSAT: NavSAT,
  CfgINF: CfgINF,
  NavPOSECEF: NavPOSECEF,
  UpdSOS_Ack: UpdSOS_Ack,
  HnrPVT: HnrPVT,
  RxmSFRBX: RxmSFRBX,
  NavPOSLLH: NavPOSLLH,
  RxmALM: RxmALM,
  CfgGNSS: CfgGNSS,
  MonGNSS: MonGNSS,
  NavCLOCK: NavCLOCK,
  CfgNMEA6: CfgNMEA6,
  MonHW: MonHW,
  NavVELNED: NavVELNED,
  CfgRST: CfgRST,
  NavSVIN: NavSVIN,
  CfgNMEA: CfgNMEA,
  NavSBAS_SV: NavSBAS_SV,
  CfgRATE: CfgRATE,
  CfgSBAS: CfgSBAS,
  NavDGPS: NavDGPS,
  Inf: Inf,
  MgaGAL: MgaGAL,
  CfgHNR: CfgHNR,
  RxmSFRB: RxmSFRB,
  RxmEPH: RxmEPH,
  AidEPH: AidEPH,
  CfgINF_Block: CfgINF_Block,
  NavPVT7: NavPVT7,
  RxmSVSI_SV: RxmSVSI_SV,
  RxmRAW_SV: RxmRAW_SV,
  NavSVINFO: NavSVINFO,
  NavSTATUS: NavSTATUS,
  NavTIMEUTC: NavTIMEUTC,
  Ack: Ack,
  CfgTMODE3: CfgTMODE3,
  RxmSVSI: RxmSVSI,
  NavVELECEF: NavVELECEF,
  TimTM2: TimTM2,
  CfgNMEA7: CfgNMEA7,
  NavDOP: NavDOP,
  CfgANT: CfgANT,
  MonHW6: MonHW6,
  UpdSOS: UpdSOS,
  RxmRAWX: RxmRAWX,
  RxmRTCM: RxmRTCM,
  CfgDAT: CfgDAT,
  AidHUI: AidHUI,
  EsfRAW: EsfRAW,
  NavPVT: NavPVT,
  NavSAT_SV: NavSAT_SV,
  CfgMSG: CfgMSG,
  CfgCFG: CfgCFG,
  AidALM: AidALM,
  CfgGNSS_Block: CfgGNSS_Block,
  NavSOL: NavSOL,
  EsfMEAS: EsfMEAS,
  CfgUSB: CfgUSB,
  EsfSTATUS_Sens: EsfSTATUS_Sens,
  CfgPRT: CfgPRT,
  CfgNAV5: CfgNAV5,
  EsfINS: EsfINS,
  EsfSTATUS: EsfSTATUS,
};
