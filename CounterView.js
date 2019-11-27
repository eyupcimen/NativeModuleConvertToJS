import React, { Component } from "react";
import PropTypes from "prop-types";
import {
  requireNativeComponent,
  UIManager,
  findNodeHandle
} from "react-native";
const COMPONENT_NAME = "CounterView";
const RNCounterView = requireNativeComponent(COMPONENT_NAME);

export default class CounterView extends Component {
  static propTypes = {
    count: PropTypes.number,
    onUpdate: PropTypes.func
  };
  _onUpdate = event => {
    if (this.props.onUpdate) {
      console.warn('Native => Update => React CounterView');
      this.props.onUpdate(event.nativeEvent);
    }
  };
  render() {
    const { count, style } = this.props;
    return (
      <RNCounterView
        style={style}
        count={count}
        onUpdate={this._onUpdate}
        ref={ref => this.ref = ref}
      />
    );
  }
  update = (...args) => {
    UIManager.dispatchViewManagerCommand(
      findNodeHandle(this.ref),
      UIManager[COMPONENT_NAME].Commands.updateFromManager,
      [...args]
    );
  };
}