
/**********************************************************
‘World Map for Nathan’s Game in Old Style
***********************************************************/
 
@land-brown: #BAA25F;
@white: #fff;
@coastal-glow: #658970;
@water: #e6d9b8;
@bathymetry1: #367;
@lakes: #7AA1A1;

Map { 
  background-color: @water;
}

#coastline [zoom > 4] {
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

#countries {
  polygon-fill: lighten(@land-brown,10);
  polygon-opacity: 0.6;
} 
 
#geoareas {
  //[featurecla='Desert'] {
  //  polygon-fill: @white;
  //  }
  [featurecla='Range/mtn'] {
    polygon-fill: darken(@land-brown, 2);
    polygon-opacity: 0.25;
    } 
  }

#lakes { 
  polygon-fill: lighten(@coastal-glow, 10);
  ::outline1, ::outline2, ::outline3 {
    line-color: lighten(@coastal-glow, 10);
    line-width: 2;
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
    line-width: 2;
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
  polygon-opacity: 0.05;
  polygon-comp-op: color-burn;
}

#bathymetry4 {
  polygon-fill: darken(@coastal-glow, 20);
  polygon-opacity: 0.09;
  polygon-comp-op: color-burn;
}

#bathymetry5 {
  polygon-fill: darken(@bathymetry1, 40);
  polygon-opacity: 0.05;
  polygon-comp-op: color-burn;
}
