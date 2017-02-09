var PlayerName = React.createClass({
  propTypes: {
    playerName: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Player Name: {this.props.playerName}</div>
      </div>
    );
  }
});
