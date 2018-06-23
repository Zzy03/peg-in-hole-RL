
"use strict";

let MasterboardDataMsg = require('./MasterboardDataMsg.js');
let Digital = require('./Digital.js');
let RobotStateRTMsg = require('./RobotStateRTMsg.js');
let ToolDataMsg = require('./ToolDataMsg.js');
let IOStates = require('./IOStates.js');
let Analog = require('./Analog.js');

module.exports = {
  MasterboardDataMsg: MasterboardDataMsg,
  Digital: Digital,
  RobotStateRTMsg: RobotStateRTMsg,
  ToolDataMsg: ToolDataMsg,
  IOStates: IOStates,
  Analog: Analog,
};
