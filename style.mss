
/**********************************************************
‘World Map for Nathan’s Game in Old Style
***********************************************************/
 
@land-brown: #BAA25F;
@white: #fff;
@coastal-glow: #658970;
//@water: #e6d9b8;
@water: #678F81;
@bathymetry1: #367;
@lakes: #7AA1A1;
@yellow-brown: #DACC88;

Map { 
  background-color: @water;
}

#coastline {
    line-color: @coastal-glow;
    line-width: 2.5;
    line-join: round;
    line-opacity: 0.5;
    line-comp-op: multiply;
  [zoom > 4] {
  ::outline1, ::outline2, ::outline3 {
    line-color: @coastal-glow;
    line-width: 2;
    line-join: round;
    line-opacity: 0.5;
    line-comp-op: multiply;
  }
  ::outline1 { line-smooth: 4; }
  ::outline2 { line-smooth: 8; }
  ::outline3 { line-smooth: 16; }
  }
}
#countries {
  polygon-fill: darken(@yellow-brown,10);
  polygon-opacity: 0.8;
} 
 
#geoareas {
  //[featurecla='Desert'] {
  //  polygon-fill: @white;
  //  }
  [featurecla='Range/mtn'] {
    polygon-fill: darken(@yellow-brown, 33);
    polygon-opacity: 0.15;
    } 
  }

#lakes { 
  polygon-fill: lighten(@coastal-glow, 10);
  ::outline1, ::outline2, ::outline3 {
    line-color: lighten(@coastal-glow, 10);
    line-width: 1;
    line-join: round;
    line-opacity: 0.5;
    line-comp-op: multiply;
  }
  ::outline1 { line-smooth: 1; }
  ::outline2 { line-smooth: 2; }
  ::outline3 { line-smooth: 3; }
}


#riverslakes [zoom > 2] {
  line-color: @coastal-glow;
  line-width: 2px;
}
 
#deadsea { 
  polygon-fill: @coastal-glow;
  ::outline1, ::outline2, ::outline3 {
    line-color: lighten(@coastal-glow, 10);
    line-width: 1;
    line-join: round;
    line-opacity: 0.5;
    line-comp-op: multiply;
  }
  ::outline1 { line-smooth: 1; }
  ::outline2 { line-smooth: 2; }
  ::outline3 { line-smooth: 3; }
}

#glaciers {
  polygon-fill: @white;
  polygon-opacity: .75;
  polygon-smooth: 1;
}

#bathymetry1 {
  polygon-fill: @bathymetry1;
  polygon-opacity: 0.02;
  polygon-comp-op: color-burn;
}

#bathymetry4 {
  //polygon-fill: darken(@coastal-glow, 10);
  polygon-fill: #AFB48B;
  polygon-opacity: 0.05;
  polygon-comp-op: color-burn;
}

#bathymetry5 {
  //polygon-fill: darken(@bathymetry1, 20);
  polygon-fill: #8DA592;
  polygon-opacity: 0.06;
  polygon-comp-op: color-burn;
}



#ship [zoom > 3] {
  point-file:url(images/noun_11582.svg);
}
