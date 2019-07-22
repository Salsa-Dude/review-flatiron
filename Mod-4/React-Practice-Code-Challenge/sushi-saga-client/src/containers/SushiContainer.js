import React, { Fragment } from 'react'
import MoreButton from '../components/MoreButton'
import SushiCard from '../components/Sushi'

const SushiContainer = (props) => {
  return (
    <Fragment>
      <div className="belt">
        {
         props.currentSushi.map(sushi => {
          let eaten = props.ordered.find(eatenSushi => eatenSushi.id === sushi.id)
           return <SushiCard 
                    key={sushi.id} 
                    sushi={sushi} 
                    eatSushi={props.eatSushi} 
                    eaten={eaten ? true : false} 
                  />
         })
        }
        <MoreButton moreSushi={props.moreSushi}/>
      </div>
    </Fragment>
  )
}

export default SushiContainer