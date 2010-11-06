// sound file
"../data/snare.wav" => string filename;
if( me.args() ) me.arg(0) => filename;

// the patch 
SndBuf buf => dac;
// load the file
filename => buf.read;

// time loop
while( true )
{
    0 => buf.pos;
    Std.rand2f(.2,.9) => buf.gain;
    Std.rand2f(.5,1.5) => buf.rate;
    100::ms => now;
}
