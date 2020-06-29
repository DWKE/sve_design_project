
"use strict";

let BatteryStatus = require('./BatteryStatus.js');
let ParamValue = require('./ParamValue.js');
let Mavlink = require('./Mavlink.js');
let ManualControl = require('./ManualControl.js');
let Trajectory = require('./Trajectory.js');
let HilControls = require('./HilControls.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let DebugValue = require('./DebugValue.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let ActuatorControl = require('./ActuatorControl.js');
let Waypoint = require('./Waypoint.js');
let WaypointList = require('./WaypointList.js');
let LogData = require('./LogData.js');
let RTCM = require('./RTCM.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let EstimatorStatus = require('./EstimatorStatus.js');
let LogEntry = require('./LogEntry.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let VehicleInfo = require('./VehicleInfo.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let HilSensor = require('./HilSensor.js');
let FileEntry = require('./FileEntry.js');
let RadioStatus = require('./RadioStatus.js');
let ExtendedState = require('./ExtendedState.js');
let Thrust = require('./Thrust.js');
let MountControl = require('./MountControl.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let RCOut = require('./RCOut.js');
let RCIn = require('./RCIn.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let Param = require('./Param.js');
let HomePosition = require('./HomePosition.js');
let PositionTarget = require('./PositionTarget.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let State = require('./State.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let StatusText = require('./StatusText.js');
let Vibration = require('./Vibration.js');
let LandingTarget = require('./LandingTarget.js');
let WaypointReached = require('./WaypointReached.js');
let Altitude = require('./Altitude.js');
let CommandCode = require('./CommandCode.js');
let HilGPS = require('./HilGPS.js');
let VFR_HUD = require('./VFR_HUD.js');

module.exports = {
  BatteryStatus: BatteryStatus,
  ParamValue: ParamValue,
  Mavlink: Mavlink,
  ManualControl: ManualControl,
  Trajectory: Trajectory,
  HilControls: HilControls,
  OverrideRCIn: OverrideRCIn,
  DebugValue: DebugValue,
  AttitudeTarget: AttitudeTarget,
  ActuatorControl: ActuatorControl,
  Waypoint: Waypoint,
  WaypointList: WaypointList,
  LogData: LogData,
  RTCM: RTCM,
  WheelOdomStamped: WheelOdomStamped,
  ADSBVehicle: ADSBVehicle,
  EstimatorStatus: EstimatorStatus,
  LogEntry: LogEntry,
  CamIMUStamp: CamIMUStamp,
  VehicleInfo: VehicleInfo,
  GlobalPositionTarget: GlobalPositionTarget,
  HilSensor: HilSensor,
  FileEntry: FileEntry,
  RadioStatus: RadioStatus,
  ExtendedState: ExtendedState,
  Thrust: Thrust,
  MountControl: MountControl,
  CompanionProcessStatus: CompanionProcessStatus,
  RCOut: RCOut,
  RCIn: RCIn,
  OnboardComputerStatus: OnboardComputerStatus,
  OpticalFlowRad: OpticalFlowRad,
  Param: Param,
  HomePosition: HomePosition,
  PositionTarget: PositionTarget,
  HilStateQuaternion: HilStateQuaternion,
  TimesyncStatus: TimesyncStatus,
  State: State,
  HilActuatorControls: HilActuatorControls,
  StatusText: StatusText,
  Vibration: Vibration,
  LandingTarget: LandingTarget,
  WaypointReached: WaypointReached,
  Altitude: Altitude,
  CommandCode: CommandCode,
  HilGPS: HilGPS,
  VFR_HUD: VFR_HUD,
};
