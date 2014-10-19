
/**********************************************************
‘World Map for Nathan’s Game
***********************************************************/

@darkest-blue: #30707C; 
@medium-blue: #4EB7C7;
@medium-blue2: #4194A5;
@lightest-blue: #4ABFDA;
@darkest-green: #798825;
@medium-green:#A0B135;
@white: #fff;
@desert: #D4A821;

Map {
  background-color: @medium-blue2;
}

#ocean {
	polygon-fill:@darkest-blue;  
}
#coastline {
  line-color:@lightest-blue;
  line-width: 4px;
  }

#countries {
  ::outline { 
    line-color: @medium-blue;
    line-width: 10px;
    line-join: round;
  }
  polygon-fill: @medium-green;
} 

#geoareas {
  [featurecla='Desert'] {
    polygon-fill: @desert;
    }
  }

#countriesoutlines {
  //polygon-fill: @medium-green;
  line-color: @darkest-green;
  line-width: 0.5px;
  line-join: round;
  }

#lakes {
  polygon-fill: @lightest-blue;
  line-color: @darkest-green;
  }

#riverslakes {
  line-color: @medium-blue;
  line-width: 1px;
}


#glaciers {
  polygon-fill: @white;
  }
