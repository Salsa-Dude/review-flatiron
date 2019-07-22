import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';

// Endpoint!
const API = "http://localhost:4000/sushis"

class App extends Component {
  constructor() {
    super()
    
    this.state = {
      allSushi: [],
      currentSushi: [],
      currentIndex: 0,
      ordered: [],
      money: 100
    }

  }

  componentDidMount() {
    fetch(API)
    .then(res => res.json())
    .then(sushiData => {
      let firstFour = sushiData.slice(0, 4)
      this.setState({
        allSushi: sushiData,
        currentSushi: firstFour
      })
    })
  }

  moreSushi = () => {

    let newIndex = this.state.currentIndex + 4
    let newCurrentSushi = this.state.allSushi.slice(newIndex, newIndex + 4)

    this.setState({
      currentIndex: newIndex,
      currentSushi: newCurrentSushi
    })

  }

  eatSushi = (sushiObj) => {

    let foundSushi = this.state.ordered.find(sushi => sushi.id === sushiObj.id)
    let afford = this.state.money >= sushiObj.price

    if (!foundSushi && afford) {
      let copyOrdered = [...this.state.ordered]
      copyOrdered.push(sushiObj)
      
      this.setState({
        ordered: copyOrdered,
        money: this.state.money - sushiObj.price
      })
    }
  }

  render() {
    return (
      <div className="app">
        <SushiContainer 
          currentSushi={this.state.currentSushi}  
          moreSushi={this.moreSushi}
          eatSushi={this.eatSushi}
          ordered={this.state.ordered}
        />
        <Table ordered={this.state.ordered} money={this.state.money} />
      </div>
    );
  }
}

export default App;