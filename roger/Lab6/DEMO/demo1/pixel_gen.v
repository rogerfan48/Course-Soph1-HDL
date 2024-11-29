module pixel_gen(
     input [9:0] h_cnt,
     input valid,
     output reg [3:0] vgaRed,
     output reg [3:0] vgaGreen,
     output reg [3:0] vgaBlue
     );

     always @(*) begin
     if(!valid)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0;
     else if(h_cnt < 5 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h000;
     else if(h_cnt < 10 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h001;
     else if(h_cnt < 15 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h002;
     else if(h_cnt < 20 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h003;
     else if(h_cnt < 25 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h004;
     else if(h_cnt < 30 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h005;
     else if(h_cnt < 35 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h006;
     else if(h_cnt < 40 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h007;
     else if(h_cnt < 45 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h008;
     else if(h_cnt < 50 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h009;
     else if(h_cnt < 55 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h00a;
     else if(h_cnt < 60 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h00b;
     else if(h_cnt < 65 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h00c;
     else if(h_cnt < 70 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h00d;
     else if(h_cnt < 75 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h00e;
     else if(h_cnt < 80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h00f;
     else if(h_cnt < 5 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h010;
     else if(h_cnt < 10 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h011;
     else if(h_cnt < 15 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h012;
     else if(h_cnt < 20 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h013;
     else if(h_cnt < 25 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h014;
     else if(h_cnt < 30 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h015;
     else if(h_cnt < 35 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h016;
     else if(h_cnt < 40 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h017;
     else if(h_cnt < 45 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h018;
     else if(h_cnt < 50 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h019;
     else if(h_cnt < 55 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h01a;
     else if(h_cnt < 60 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h01b;
     else if(h_cnt < 65 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h01c;
     else if(h_cnt < 70 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h01d;
     else if(h_cnt < 75 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h01e;
     else if(h_cnt < 80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h01f;
     else if(h_cnt < 5 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h020;
     else if(h_cnt < 10 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h021;
     else if(h_cnt < 15 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h022;
     else if(h_cnt < 20 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h023;
     else if(h_cnt < 25 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h024;
     else if(h_cnt < 30 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h025;
     else if(h_cnt < 35 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h026;
     else if(h_cnt < 40 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h027;
     else if(h_cnt < 45 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h028;
     else if(h_cnt < 50 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h029;
     else if(h_cnt < 55 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h02a;
     else if(h_cnt < 60 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h02b;
     else if(h_cnt < 65 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h02c;
     else if(h_cnt < 70 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h02d;
     else if(h_cnt < 75 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h02e;
     else if(h_cnt < 80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h02f;
     else if(h_cnt < 5 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h030;
     else if(h_cnt < 10 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h031;
     else if(h_cnt < 15 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h032;
     else if(h_cnt < 20 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h033;
     else if(h_cnt < 25 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h034;
     else if(h_cnt < 30 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h035;
     else if(h_cnt < 35 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h036;
     else if(h_cnt < 40 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h037;
     else if(h_cnt < 45 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h038;
     else if(h_cnt < 50 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h039;
     else if(h_cnt < 55 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h03a;
     else if(h_cnt < 60 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h03b;
     else if(h_cnt < 65 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h03c;
     else if(h_cnt < 70 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h03d;
     else if(h_cnt < 75 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h03e;
     else if(h_cnt < 80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h03f;
     else if(h_cnt < 5 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h040;
     else if(h_cnt < 10 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h041;
     else if(h_cnt < 15 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h042;
     else if(h_cnt < 20 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h043;
     else if(h_cnt < 25 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h044;
     else if(h_cnt < 30 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h045;
     else if(h_cnt < 35 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h046;
     else if(h_cnt < 40 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h047;
     else if(h_cnt < 45 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h048;
     else if(h_cnt < 50 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h049;
     else if(h_cnt < 55 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h04a;
     else if(h_cnt < 60 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h04b;
     else if(h_cnt < 65 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h04c;
     else if(h_cnt < 70 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h04d;
     else if(h_cnt < 75 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h04e;
     else if(h_cnt < 80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h04f;
     else if(h_cnt < 5 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h050;
     else if(h_cnt < 10 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h051;
     else if(h_cnt < 15 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h052;
     else if(h_cnt < 20 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h053;
     else if(h_cnt < 25 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h054;
     else if(h_cnt < 30 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h055;
     else if(h_cnt < 35 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h056;
     else if(h_cnt < 40 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h057;
     else if(h_cnt < 45 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h058;
     else if(h_cnt < 50 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h059;
     else if(h_cnt < 55 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h05a;
     else if(h_cnt < 60 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h05b;
     else if(h_cnt < 65 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h05c;
     else if(h_cnt < 70 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h05d;
     else if(h_cnt < 75 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h05e;
     else if(h_cnt < 80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h05f;
     else if(h_cnt < 5 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h060;
     else if(h_cnt < 10 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h061;
     else if(h_cnt < 15 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h062;
     else if(h_cnt < 20 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h063;
     else if(h_cnt < 25 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h064;
     else if(h_cnt < 30 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h065;
     else if(h_cnt < 35 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h066;
     else if(h_cnt < 40 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h067;
     else if(h_cnt < 45 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h068;
     else if(h_cnt < 50 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h069;
     else if(h_cnt < 55 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h06a;
     else if(h_cnt < 60 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h06b;
     else if(h_cnt < 65 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h06c;
     else if(h_cnt < 70 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h06d;
     else if(h_cnt < 75 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h06e;
     else if(h_cnt < 80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h06f;
     else if(h_cnt < 5 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h070;
     else if(h_cnt < 10 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h071;
     else if(h_cnt < 15 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h072;
     else if(h_cnt < 20 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h073;
     else if(h_cnt < 25 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h074;
     else if(h_cnt < 30 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h075;
     else if(h_cnt < 35 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h076;
     else if(h_cnt < 40 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h077;
     else if(h_cnt < 45 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h078;
     else if(h_cnt < 50 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h079;
     else if(h_cnt < 55 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h07a;
     else if(h_cnt < 60 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h07b;
     else if(h_cnt < 65 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h07c;
     else if(h_cnt < 70 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h07d;
     else if(h_cnt < 75 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h07e;
     else if(h_cnt < 80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h07f;
     else if(h_cnt < 5 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h080;
     else if(h_cnt < 10 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h081;
     else if(h_cnt < 15 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h082;
     else if(h_cnt < 20 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h083;
     else if(h_cnt < 25 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h084;
     else if(h_cnt < 30 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h085;
     else if(h_cnt < 35 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h086;
     else if(h_cnt < 40 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h087;
     else if(h_cnt < 45 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h088;
     else if(h_cnt < 50 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h089;
     else if(h_cnt < 55 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h08a;
     else if(h_cnt < 60 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h08b;
     else if(h_cnt < 65 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h08c;
     else if(h_cnt < 70 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h08d;
     else if(h_cnt < 75 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h08e;
     else if(h_cnt < 80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h08f;
     else if(h_cnt < 5 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h090;
     else if(h_cnt < 10 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h091;
     else if(h_cnt < 15 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h092;
     else if(h_cnt < 20 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h093;
     else if(h_cnt < 25 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h094;
     else if(h_cnt < 30 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h095;
     else if(h_cnt < 35 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h096;
     else if(h_cnt < 40 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h097;
     else if(h_cnt < 45 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h098;
     else if(h_cnt < 50 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h099;
     else if(h_cnt < 55 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h09a;
     else if(h_cnt < 60 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h09b;
     else if(h_cnt < 65 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h09c;
     else if(h_cnt < 70 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h09d;
     else if(h_cnt < 75 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h09e;
     else if(h_cnt < 80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h09f;
     else if(h_cnt < 5 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a0;
     else if(h_cnt < 10 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a1;
     else if(h_cnt < 15 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a2;
     else if(h_cnt < 20 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a3;
     else if(h_cnt < 25 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a4;
     else if(h_cnt < 30 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a5;
     else if(h_cnt < 35 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a6;
     else if(h_cnt < 40 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a7;
     else if(h_cnt < 45 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a8;
     else if(h_cnt < 50 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0a9;
     else if(h_cnt < 55 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0aa;
     else if(h_cnt < 60 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ab;
     else if(h_cnt < 65 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ac;
     else if(h_cnt < 70 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ad;
     else if(h_cnt < 75 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ae;
     else if(h_cnt < 80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0af;
     else if(h_cnt < 5 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b0;
     else if(h_cnt < 10 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b1;
     else if(h_cnt < 15 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b2;
     else if(h_cnt < 20 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b3;
     else if(h_cnt < 25 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b4;
     else if(h_cnt < 30 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b5;
     else if(h_cnt < 35 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b6;
     else if(h_cnt < 40 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b7;
     else if(h_cnt < 45 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b8;
     else if(h_cnt < 50 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0b9;
     else if(h_cnt < 55 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ba;
     else if(h_cnt < 60 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0bb;
     else if(h_cnt < 65 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0bc;
     else if(h_cnt < 70 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0bd;
     else if(h_cnt < 75 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0be;
     else if(h_cnt < 80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0bf;
     else if(h_cnt < 5 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c0;
     else if(h_cnt < 10 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c1;
     else if(h_cnt < 15 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c2;
     else if(h_cnt < 20 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c3;
     else if(h_cnt < 25 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c4;
     else if(h_cnt < 30 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c5;
     else if(h_cnt < 35 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c6;
     else if(h_cnt < 40 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c7;
     else if(h_cnt < 45 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c8;
     else if(h_cnt < 50 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0c9;
     else if(h_cnt < 55 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ca;
     else if(h_cnt < 60 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0cb;
     else if(h_cnt < 65 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0cc;
     else if(h_cnt < 70 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0cd;
     else if(h_cnt < 75 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ce;
     else if(h_cnt < 80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0cf;
     else if(h_cnt < 5 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d0;
     else if(h_cnt < 10 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d1;
     else if(h_cnt < 15 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d2;
     else if(h_cnt < 20 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d3;
     else if(h_cnt < 25 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d4;
     else if(h_cnt < 30 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d5;
     else if(h_cnt < 35 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d6;
     else if(h_cnt < 40 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d7;
     else if(h_cnt < 45 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d8;
     else if(h_cnt < 50 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0d9;
     else if(h_cnt < 55 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0da;
     else if(h_cnt < 60 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0db;
     else if(h_cnt < 65 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0dc;
     else if(h_cnt < 70 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0dd;
     else if(h_cnt < 75 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0de;
     else if(h_cnt < 80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0df;
     else if(h_cnt < 5 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e0;
     else if(h_cnt < 10 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e1;
     else if(h_cnt < 15 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e2;
     else if(h_cnt < 20 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e3;
     else if(h_cnt < 25 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e4;
     else if(h_cnt < 30 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e5;
     else if(h_cnt < 35 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e6;
     else if(h_cnt < 40 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e7;
     else if(h_cnt < 45 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e8;
     else if(h_cnt < 50 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0e9;
     else if(h_cnt < 55 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ea;
     else if(h_cnt < 60 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0eb;
     else if(h_cnt < 65 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ec;
     else if(h_cnt < 70 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ed;
     else if(h_cnt < 75 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ee;
     else if(h_cnt < 80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ef;
     else if(h_cnt < 5 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f0;
     else if(h_cnt < 10 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f1;
     else if(h_cnt < 15 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f2;
     else if(h_cnt < 20 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f3;
     else if(h_cnt < 25 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f4;
     else if(h_cnt < 30 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f5;
     else if(h_cnt < 35 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f6;
     else if(h_cnt < 40 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f7;
     else if(h_cnt < 45 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f8;
     else if(h_cnt < 50 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0f9;
     else if(h_cnt < 55 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0fa;
     else if(h_cnt < 60 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0fb;
     else if(h_cnt < 65 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0fc;
     else if(h_cnt < 70 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0fd;
     else if(h_cnt < 75 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0fe;
     else if(h_cnt < 80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h0ff;
     
     
     else if(h_cnt < 5 +80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h100;
     else if(h_cnt < 10+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h101;
     else if(h_cnt < 15+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h102;
     else if(h_cnt < 20+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h103;
     else if(h_cnt < 25+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h104;
     else if(h_cnt < 30+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h105;
     else if(h_cnt < 35+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h106;
     else if(h_cnt < 40+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h107;
     else if(h_cnt < 45+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h108;
     else if(h_cnt < 50+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h109;
     else if(h_cnt < 55+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h10a;
     else if(h_cnt < 60+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h10b;
     else if(h_cnt < 65+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h10c;
     else if(h_cnt < 70+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h10d;
     else if(h_cnt < 75+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h10e;
     else if(h_cnt < 80+80 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h10f;
     else if(h_cnt < 5 +80&& v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h110;
     else if(h_cnt < 10+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h111;
     else if(h_cnt < 15+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h112;
     else if(h_cnt < 20+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h113;
     else if(h_cnt < 25+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h114;
     else if(h_cnt < 30+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h115;
     else if(h_cnt < 35+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h116;
     else if(h_cnt < 40+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h117;
     else if(h_cnt < 45+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h118;
     else if(h_cnt < 50+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h119;
     else if(h_cnt < 55+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h11a;
     else if(h_cnt < 60+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h11b;
     else if(h_cnt < 65+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h11c;
     else if(h_cnt < 70+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h11d;
     else if(h_cnt < 75+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h11e;
     else if(h_cnt < 80+80 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h11f;
     else if(h_cnt < 5 +80&& v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h120;
     else if(h_cnt < 10+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h121;
     else if(h_cnt < 15+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h122;
     else if(h_cnt < 20+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h123;
     else if(h_cnt < 25+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h124;
     else if(h_cnt < 30+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h125;
     else if(h_cnt < 35+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h126;
     else if(h_cnt < 40+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h127;
     else if(h_cnt < 45+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h128;
     else if(h_cnt < 50+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h129;
     else if(h_cnt < 55+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h12a;
     else if(h_cnt < 60+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h12b;
     else if(h_cnt < 65+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h12c;
     else if(h_cnt < 70+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h12d;
     else if(h_cnt < 75+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h12e;
     else if(h_cnt < 80+80 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h12f;
     else if(h_cnt < 5 +80&& v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h130;
     else if(h_cnt < 10+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h131;
     else if(h_cnt < 15+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h132;
     else if(h_cnt < 20+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h133;
     else if(h_cnt < 25+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h134;
     else if(h_cnt < 30+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h135;
     else if(h_cnt < 35+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h136;
     else if(h_cnt < 40+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h137;
     else if(h_cnt < 45+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h138;
     else if(h_cnt < 50+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h139;
     else if(h_cnt < 55+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h13a;
     else if(h_cnt < 60+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h13b;
     else if(h_cnt < 65+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h13c;
     else if(h_cnt < 70+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h13d;
     else if(h_cnt < 75+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h13e;
     else if(h_cnt < 80+80 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h13f;
     else if(h_cnt < 5 +80&& v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h140;
     else if(h_cnt < 10+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h141;
     else if(h_cnt < 15+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h142;
     else if(h_cnt < 20+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h143;
     else if(h_cnt < 25+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h144;
     else if(h_cnt < 30+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h145;
     else if(h_cnt < 35+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h146;
     else if(h_cnt < 40+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h147;
     else if(h_cnt < 45+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h148;
     else if(h_cnt < 50+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h149;
     else if(h_cnt < 55+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h14a;
     else if(h_cnt < 60+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h14b;
     else if(h_cnt < 65+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h14c;
     else if(h_cnt < 70+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h14d;
     else if(h_cnt < 75+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h14e;
     else if(h_cnt < 80+80 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h14f;
     else if(h_cnt < 5 +80&& v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h150;
     else if(h_cnt < 10+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h151;
     else if(h_cnt < 15+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h152;
     else if(h_cnt < 20+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h153;
     else if(h_cnt < 25+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h154;
     else if(h_cnt < 30+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h155;
     else if(h_cnt < 35+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h156;
     else if(h_cnt < 40+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h157;
     else if(h_cnt < 45+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h158;
     else if(h_cnt < 50+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h159;
     else if(h_cnt < 55+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h15a;
     else if(h_cnt < 60+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h15b;
     else if(h_cnt < 65+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h15c;
     else if(h_cnt < 70+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h15d;
     else if(h_cnt < 75+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h15e;
     else if(h_cnt < 80+80 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h15f;
     else if(h_cnt < 5 +80&& v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h160;
     else if(h_cnt < 10+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h161;
     else if(h_cnt < 15+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h162;
     else if(h_cnt < 20+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h163;
     else if(h_cnt < 25+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h164;
     else if(h_cnt < 30+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h165;
     else if(h_cnt < 35+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h166;
     else if(h_cnt < 40+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h167;
     else if(h_cnt < 45+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h168;
     else if(h_cnt < 50+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h169;
     else if(h_cnt < 55+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h16a;
     else if(h_cnt < 60+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h16b;
     else if(h_cnt < 65+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h16c;
     else if(h_cnt < 70+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h16d;
     else if(h_cnt < 75+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h16e;
     else if(h_cnt < 80+80 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h16f;
     else if(h_cnt < 5 +80&& v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h170;
     else if(h_cnt < 10+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h171;
     else if(h_cnt < 15+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h172;
     else if(h_cnt < 20+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h173;
     else if(h_cnt < 25+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h174;
     else if(h_cnt < 30+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h175;
     else if(h_cnt < 35+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h176;
     else if(h_cnt < 40+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h177;
     else if(h_cnt < 45+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h178;
     else if(h_cnt < 50+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h179;
     else if(h_cnt < 55+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h17a;
     else if(h_cnt < 60+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h17b;
     else if(h_cnt < 65+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h17c;
     else if(h_cnt < 70+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h17d;
     else if(h_cnt < 75+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h17e;
     else if(h_cnt < 80+80 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h17f;
     else if(h_cnt < 5 +80&& v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h180;
     else if(h_cnt < 10+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h181;
     else if(h_cnt < 15+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h182;
     else if(h_cnt < 20+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h183;
     else if(h_cnt < 25+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h184;
     else if(h_cnt < 30+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h185;
     else if(h_cnt < 35+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h186;
     else if(h_cnt < 40+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h187;
     else if(h_cnt < 45+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h188;
     else if(h_cnt < 50+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h189;
     else if(h_cnt < 55+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h18a;
     else if(h_cnt < 60+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h18b;
     else if(h_cnt < 65+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h18c;
     else if(h_cnt < 70+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h18d;
     else if(h_cnt < 75+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h18e;
     else if(h_cnt < 80+80 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h18f;
     else if(h_cnt < 5 +80&& v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h190;
     else if(h_cnt < 10+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h191;
     else if(h_cnt < 15+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h192;
     else if(h_cnt < 20+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h193;
     else if(h_cnt < 25+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h194;
     else if(h_cnt < 30+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h195;
     else if(h_cnt < 35+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h196;
     else if(h_cnt < 40+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h197;
     else if(h_cnt < 45+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h198;
     else if(h_cnt < 50+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h199;
     else if(h_cnt < 55+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h19a;
     else if(h_cnt < 60+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h19b;
     else if(h_cnt < 65+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h19c;
     else if(h_cnt < 70+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h19d;
     else if(h_cnt < 75+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h19e;
     else if(h_cnt < 80+80 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h19f;
     else if(h_cnt < 5 +80&& v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a0;
     else if(h_cnt < 10+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a1;
     else if(h_cnt < 15+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a2;
     else if(h_cnt < 20+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a3;
     else if(h_cnt < 25+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a4;
     else if(h_cnt < 30+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a5;
     else if(h_cnt < 35+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a6;
     else if(h_cnt < 40+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a7;
     else if(h_cnt < 45+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a8;
     else if(h_cnt < 50+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1a9;
     else if(h_cnt < 55+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1aa;
     else if(h_cnt < 60+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ab;
     else if(h_cnt < 65+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ac;
     else if(h_cnt < 70+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ad;
     else if(h_cnt < 75+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ae;
     else if(h_cnt < 80+80 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1af;
     else if(h_cnt < 5 +80&& v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b0;
     else if(h_cnt < 10+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b1;
     else if(h_cnt < 15+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b2;
     else if(h_cnt < 20+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b3;
     else if(h_cnt < 25+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b4;
     else if(h_cnt < 30+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b5;
     else if(h_cnt < 35+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b6;
     else if(h_cnt < 40+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b7;
     else if(h_cnt < 45+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b8;
     else if(h_cnt < 50+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1b9;
     else if(h_cnt < 55+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ba;
     else if(h_cnt < 60+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1bb;
     else if(h_cnt < 65+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1bc;
     else if(h_cnt < 70+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1bd;
     else if(h_cnt < 75+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1be;
     else if(h_cnt < 80+80 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1bf;
     else if(h_cnt < 5 +80&& v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c0;
     else if(h_cnt < 10+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c1;
     else if(h_cnt < 15+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c2;
     else if(h_cnt < 20+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c3;
     else if(h_cnt < 25+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c4;
     else if(h_cnt < 30+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c5;
     else if(h_cnt < 35+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c6;
     else if(h_cnt < 40+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c7;
     else if(h_cnt < 45+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c8;
     else if(h_cnt < 50+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1c9;
     else if(h_cnt < 55+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ca;
     else if(h_cnt < 60+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1cb;
     else if(h_cnt < 65+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1cc;
     else if(h_cnt < 70+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1cd;
     else if(h_cnt < 75+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ce;
     else if(h_cnt < 80+80 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1cf;
     else if(h_cnt < 5 +80&& v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d0;
     else if(h_cnt < 10+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d1;
     else if(h_cnt < 15+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d2;
     else if(h_cnt < 20+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d3;
     else if(h_cnt < 25+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d4;
     else if(h_cnt < 30+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d5;
     else if(h_cnt < 35+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d6;
     else if(h_cnt < 40+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d7;
     else if(h_cnt < 45+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d8;
     else if(h_cnt < 50+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1d9;
     else if(h_cnt < 55+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1da;
     else if(h_cnt < 60+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1db;
     else if(h_cnt < 65+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1dc;
     else if(h_cnt < 70+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1dd;
     else if(h_cnt < 75+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1de;
     else if(h_cnt < 80+80 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1df;
     else if(h_cnt < 5 +80&& v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e0;
     else if(h_cnt < 10+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e1;
     else if(h_cnt < 15+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e2;
     else if(h_cnt < 20+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e3;
     else if(h_cnt < 25+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e4;
     else if(h_cnt < 30+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e5;
     else if(h_cnt < 35+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e6;
     else if(h_cnt < 40+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e7;
     else if(h_cnt < 45+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e8;
     else if(h_cnt < 50+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1e9;
     else if(h_cnt < 55+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ea;
     else if(h_cnt < 60+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1eb;
     else if(h_cnt < 65+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ec;
     else if(h_cnt < 70+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ed;
     else if(h_cnt < 75+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ee;
     else if(h_cnt < 80+80 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ef;
     else if(h_cnt < 5 +80&& v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f0;
     else if(h_cnt < 10+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f1;
     else if(h_cnt < 15+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f2;
     else if(h_cnt < 20+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f3;
     else if(h_cnt < 25+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f4;
     else if(h_cnt < 30+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f5;
     else if(h_cnt < 35+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f6;
     else if(h_cnt < 40+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f7;
     else if(h_cnt < 45+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f8;
     else if(h_cnt < 50+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1f9;
     else if(h_cnt < 55+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1fa;
     else if(h_cnt < 60+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1fb;
     else if(h_cnt < 65+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1fc;
     else if(h_cnt < 70+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1fd;
     else if(h_cnt < 75+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1fe;
     else if(h_cnt < 80+80 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h1ff;
     
     
     else if(h_cnt < 5 +160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h200;
     else if(h_cnt < 10+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h201;
     else if(h_cnt < 15+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h202;
     else if(h_cnt < 20+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h203;
     else if(h_cnt < 25+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h204;
     else if(h_cnt < 30+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h205;
     else if(h_cnt < 35+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h206;
     else if(h_cnt < 40+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h207;
     else if(h_cnt < 45+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h208;
     else if(h_cnt < 50+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h209;
     else if(h_cnt < 55+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h20a;
     else if(h_cnt < 60+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h20b;
     else if(h_cnt < 65+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h20c;
     else if(h_cnt < 70+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h20d;
     else if(h_cnt < 75+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h20e;
     else if(h_cnt < 80+160 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h20f;
     else if(h_cnt < 5 +160&& v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h210;
     else if(h_cnt < 10+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h211;
     else if(h_cnt < 15+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h212;
     else if(h_cnt < 20+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h213;
     else if(h_cnt < 25+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h214;
     else if(h_cnt < 30+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h215;
     else if(h_cnt < 35+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h216;
     else if(h_cnt < 40+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h217;
     else if(h_cnt < 45+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h218;
     else if(h_cnt < 50+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h219;
     else if(h_cnt < 55+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h21a;
     else if(h_cnt < 60+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h21b;
     else if(h_cnt < 65+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h21c;
     else if(h_cnt < 70+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h21d;
     else if(h_cnt < 75+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h21e;
     else if(h_cnt < 80+160 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h21f;
     else if(h_cnt < 5 +160&& v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h220;
     else if(h_cnt < 10+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h221;
     else if(h_cnt < 15+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h222;
     else if(h_cnt < 20+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h223;
     else if(h_cnt < 25+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h224;
     else if(h_cnt < 30+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h225;
     else if(h_cnt < 35+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h226;
     else if(h_cnt < 40+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h227;
     else if(h_cnt < 45+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h228;
     else if(h_cnt < 50+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h229;
     else if(h_cnt < 55+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h22a;
     else if(h_cnt < 60+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h22b;
     else if(h_cnt < 65+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h22c;
     else if(h_cnt < 70+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h22d;
     else if(h_cnt < 75+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h22e;
     else if(h_cnt < 80+160 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h22f;
     else if(h_cnt < 5 +160&& v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h230;
     else if(h_cnt < 10+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h231;
     else if(h_cnt < 15+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h232;
     else if(h_cnt < 20+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h233;
     else if(h_cnt < 25+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h234;
     else if(h_cnt < 30+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h235;
     else if(h_cnt < 35+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h236;
     else if(h_cnt < 40+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h237;
     else if(h_cnt < 45+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h238;
     else if(h_cnt < 50+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h239;
     else if(h_cnt < 55+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h23a;
     else if(h_cnt < 60+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h23b;
     else if(h_cnt < 65+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h23c;
     else if(h_cnt < 70+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h23d;
     else if(h_cnt < 75+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h23e;
     else if(h_cnt < 80+160 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h23f;
     else if(h_cnt < 5 +160&& v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h240;
     else if(h_cnt < 10+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h241;
     else if(h_cnt < 15+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h242;
     else if(h_cnt < 20+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h243;
     else if(h_cnt < 25+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h244;
     else if(h_cnt < 30+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h245;
     else if(h_cnt < 35+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h246;
     else if(h_cnt < 40+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h247;
     else if(h_cnt < 45+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h248;
     else if(h_cnt < 50+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h249;
     else if(h_cnt < 55+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h24a;
     else if(h_cnt < 60+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h24b;
     else if(h_cnt < 65+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h24c;
     else if(h_cnt < 70+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h24d;
     else if(h_cnt < 75+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h24e;
     else if(h_cnt < 80+160 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h24f;
     else if(h_cnt < 5 +160&& v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h250;
     else if(h_cnt < 10+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h251;
     else if(h_cnt < 15+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h252;
     else if(h_cnt < 20+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h253;
     else if(h_cnt < 25+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h254;
     else if(h_cnt < 30+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h255;
     else if(h_cnt < 35+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h256;
     else if(h_cnt < 40+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h257;
     else if(h_cnt < 45+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h258;
     else if(h_cnt < 50+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h259;
     else if(h_cnt < 55+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h25a;
     else if(h_cnt < 60+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h25b;
     else if(h_cnt < 65+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h25c;
     else if(h_cnt < 70+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h25d;
     else if(h_cnt < 75+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h25e;
     else if(h_cnt < 80+160 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h25f;
     else if(h_cnt < 5 +160&& v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h260;
     else if(h_cnt < 10+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h261;
     else if(h_cnt < 15+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h262;
     else if(h_cnt < 20+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h263;
     else if(h_cnt < 25+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h264;
     else if(h_cnt < 30+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h265;
     else if(h_cnt < 35+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h266;
     else if(h_cnt < 40+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h267;
     else if(h_cnt < 45+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h268;
     else if(h_cnt < 50+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h269;
     else if(h_cnt < 55+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h26a;
     else if(h_cnt < 60+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h26b;
     else if(h_cnt < 65+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h26c;
     else if(h_cnt < 70+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h26d;
     else if(h_cnt < 75+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h26e;
     else if(h_cnt < 80+160 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h26f;
     else if(h_cnt < 5 +160&& v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h270;
     else if(h_cnt < 10+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h271;
     else if(h_cnt < 15+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h272;
     else if(h_cnt < 20+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h273;
     else if(h_cnt < 25+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h274;
     else if(h_cnt < 30+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h275;
     else if(h_cnt < 35+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h276;
     else if(h_cnt < 40+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h277;
     else if(h_cnt < 45+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h278;
     else if(h_cnt < 50+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h279;
     else if(h_cnt < 55+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h27a;
     else if(h_cnt < 60+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h27b;
     else if(h_cnt < 65+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h27c;
     else if(h_cnt < 70+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h27d;
     else if(h_cnt < 75+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h27e;
     else if(h_cnt < 80+160 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h27f;
     else if(h_cnt < 5 +160&& v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h280;
     else if(h_cnt < 10+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h281;
     else if(h_cnt < 15+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h282;
     else if(h_cnt < 20+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h283;
     else if(h_cnt < 25+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h284;
     else if(h_cnt < 30+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h285;
     else if(h_cnt < 35+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h286;
     else if(h_cnt < 40+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h287;
     else if(h_cnt < 45+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h288;
     else if(h_cnt < 50+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h289;
     else if(h_cnt < 55+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h28a;
     else if(h_cnt < 60+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h28b;
     else if(h_cnt < 65+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h28c;
     else if(h_cnt < 70+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h28d;
     else if(h_cnt < 75+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h28e;
     else if(h_cnt < 80+160 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h28f;
     else if(h_cnt < 5 +160&& v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h290;
     else if(h_cnt < 10+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h291;
     else if(h_cnt < 15+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h292;
     else if(h_cnt < 20+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h293;
     else if(h_cnt < 25+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h294;
     else if(h_cnt < 30+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h295;
     else if(h_cnt < 35+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h296;
     else if(h_cnt < 40+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h297;
     else if(h_cnt < 45+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h298;
     else if(h_cnt < 50+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h299;
     else if(h_cnt < 55+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h29a;
     else if(h_cnt < 60+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h29b;
     else if(h_cnt < 65+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h29c;
     else if(h_cnt < 70+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h29d;
     else if(h_cnt < 75+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h29e;
     else if(h_cnt < 80+160 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h29f;
     else if(h_cnt < 5 +160&& v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a0;
     else if(h_cnt < 10+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a1;
     else if(h_cnt < 15+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a2;
     else if(h_cnt < 20+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a3;
     else if(h_cnt < 25+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a4;
     else if(h_cnt < 30+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a5;
     else if(h_cnt < 35+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a6;
     else if(h_cnt < 40+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a7;
     else if(h_cnt < 45+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a8;
     else if(h_cnt < 50+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2a9;
     else if(h_cnt < 55+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2aa;
     else if(h_cnt < 60+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ab;
     else if(h_cnt < 65+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ac;
     else if(h_cnt < 70+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ad;
     else if(h_cnt < 75+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ae;
     else if(h_cnt < 80+160 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2af;
     else if(h_cnt < 5 +160&& v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b0;
     else if(h_cnt < 10+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b1;
     else if(h_cnt < 15+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b2;
     else if(h_cnt < 20+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b3;
     else if(h_cnt < 25+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b4;
     else if(h_cnt < 30+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b5;
     else if(h_cnt < 35+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b6;
     else if(h_cnt < 40+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b7;
     else if(h_cnt < 45+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b8;
     else if(h_cnt < 50+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2b9;
     else if(h_cnt < 55+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ba;
     else if(h_cnt < 60+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2bb;
     else if(h_cnt < 65+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2bc;
     else if(h_cnt < 70+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2bd;
     else if(h_cnt < 75+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2be;
     else if(h_cnt < 80+160 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2bf;
     else if(h_cnt < 5 +160&& v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c0;
     else if(h_cnt < 10+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c1;
     else if(h_cnt < 15+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c2;
     else if(h_cnt < 20+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c3;
     else if(h_cnt < 25+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c4;
     else if(h_cnt < 30+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c5;
     else if(h_cnt < 35+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c6;
     else if(h_cnt < 40+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c7;
     else if(h_cnt < 45+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c8;
     else if(h_cnt < 50+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2c9;
     else if(h_cnt < 55+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ca;
     else if(h_cnt < 60+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2cb;
     else if(h_cnt < 65+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2cc;
     else if(h_cnt < 70+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2cd;
     else if(h_cnt < 75+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ce;
     else if(h_cnt < 80+160 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2cf;
     else if(h_cnt < 5 +160&& v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d0;
     else if(h_cnt < 10+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d1;
     else if(h_cnt < 15+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d2;
     else if(h_cnt < 20+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d3;
     else if(h_cnt < 25+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d4;
     else if(h_cnt < 30+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d5;
     else if(h_cnt < 35+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d6;
     else if(h_cnt < 40+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d7;
     else if(h_cnt < 45+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d8;
     else if(h_cnt < 50+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2d9;
     else if(h_cnt < 55+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2da;
     else if(h_cnt < 60+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2db;
     else if(h_cnt < 65+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2dc;
     else if(h_cnt < 70+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2dd;
     else if(h_cnt < 75+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2de;
     else if(h_cnt < 80+160 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2df;
     else if(h_cnt < 5 +160&& v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e0;
     else if(h_cnt < 10+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e1;
     else if(h_cnt < 15+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e2;
     else if(h_cnt < 20+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e3;
     else if(h_cnt < 25+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e4;
     else if(h_cnt < 30+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e5;
     else if(h_cnt < 35+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e6;
     else if(h_cnt < 40+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e7;
     else if(h_cnt < 45+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e8;
     else if(h_cnt < 50+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2e9;
     else if(h_cnt < 55+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ea;
     else if(h_cnt < 60+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2eb;
     else if(h_cnt < 65+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ec;
     else if(h_cnt < 70+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ed;
     else if(h_cnt < 75+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ee;
     else if(h_cnt < 80+160 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ef;
     else if(h_cnt < 5 +160&& v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f0;
     else if(h_cnt < 10+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f1;
     else if(h_cnt < 15+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f2;
     else if(h_cnt < 20+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f3;
     else if(h_cnt < 25+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f4;
     else if(h_cnt < 30+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f5;
     else if(h_cnt < 35+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f6;
     else if(h_cnt < 40+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f7;
     else if(h_cnt < 45+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f8;
     else if(h_cnt < 50+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2f9;
     else if(h_cnt < 55+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2fa;
     else if(h_cnt < 60+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2fb;
     else if(h_cnt < 65+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2fc;
     else if(h_cnt < 70+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2fd;
     else if(h_cnt < 75+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2fe;
     else if(h_cnt < 80+160 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h2ff;
     
     
     else if(h_cnt < 5 +320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h300;
     else if(h_cnt < 10+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h301;
     else if(h_cnt < 15+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h302;
     else if(h_cnt < 20+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h303;
     else if(h_cnt < 25+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h304;
     else if(h_cnt < 30+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h305;
     else if(h_cnt < 35+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h306;
     else if(h_cnt < 40+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h307;
     else if(h_cnt < 45+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h308;
     else if(h_cnt < 50+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h309;
     else if(h_cnt < 55+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h30a;
     else if(h_cnt < 60+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h30b;
     else if(h_cnt < 65+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h30c;
     else if(h_cnt < 70+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h30d;
     else if(h_cnt < 75+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h30e;
     else if(h_cnt < 80+320 && v_cnt < 5)
          {vgaRed, vgaGreen, vgaBlue} = 12'h30f;
     else if(h_cnt < 5 +320&& v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h310;
     else if(h_cnt < 10+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h311;
     else if(h_cnt < 15+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h312;
     else if(h_cnt < 20+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h313;
     else if(h_cnt < 25+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h314;
     else if(h_cnt < 30+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h315;
     else if(h_cnt < 35+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h316;
     else if(h_cnt < 40+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h317;
     else if(h_cnt < 45+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h318;
     else if(h_cnt < 50+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h319;
     else if(h_cnt < 55+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h31a;
     else if(h_cnt < 60+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h31b;
     else if(h_cnt < 65+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h31c;
     else if(h_cnt < 70+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h31d;
     else if(h_cnt < 75+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h31e;
     else if(h_cnt < 80+320 && v_cnt < 10)
          {vgaRed, vgaGreen, vgaBlue} = 12'h31f;
     else if(h_cnt < 5 +320&& v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h320;
     else if(h_cnt < 10+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h321;
     else if(h_cnt < 15+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h322;
     else if(h_cnt < 20+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h323;
     else if(h_cnt < 25+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h324;
     else if(h_cnt < 30+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h325;
     else if(h_cnt < 35+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h326;
     else if(h_cnt < 40+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h327;
     else if(h_cnt < 45+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h328;
     else if(h_cnt < 50+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h329;
     else if(h_cnt < 55+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h32a;
     else if(h_cnt < 60+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h32b;
     else if(h_cnt < 65+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h32c;
     else if(h_cnt < 70+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h32d;
     else if(h_cnt < 75+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h32e;
     else if(h_cnt < 80+320 && v_cnt < 15)
          {vgaRed, vgaGreen, vgaBlue} = 12'h32f;
     else if(h_cnt < 5 +320&& v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h330;
     else if(h_cnt < 10+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h331;
     else if(h_cnt < 15+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h332;
     else if(h_cnt < 20+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h333;
     else if(h_cnt < 25+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h334;
     else if(h_cnt < 30+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h335;
     else if(h_cnt < 35+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h336;
     else if(h_cnt < 40+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h337;
     else if(h_cnt < 45+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h338;
     else if(h_cnt < 50+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h339;
     else if(h_cnt < 55+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h33a;
     else if(h_cnt < 60+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h33b;
     else if(h_cnt < 65+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h33c;
     else if(h_cnt < 70+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h33d;
     else if(h_cnt < 75+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h33e;
     else if(h_cnt < 80+320 && v_cnt < 20)
          {vgaRed, vgaGreen, vgaBlue} = 12'h33f;
     else if(h_cnt < 5 +320&& v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h340;
     else if(h_cnt < 10+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h341;
     else if(h_cnt < 15+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h342;
     else if(h_cnt < 20+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h343;
     else if(h_cnt < 25+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h344;
     else if(h_cnt < 30+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h345;
     else if(h_cnt < 35+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h346;
     else if(h_cnt < 40+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h347;
     else if(h_cnt < 45+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h348;
     else if(h_cnt < 50+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h349;
     else if(h_cnt < 55+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h34a;
     else if(h_cnt < 60+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h34b;
     else if(h_cnt < 65+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h34c;
     else if(h_cnt < 70+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h34d;
     else if(h_cnt < 75+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h34e;
     else if(h_cnt < 80+320 && v_cnt < 25)
          {vgaRed, vgaGreen, vgaBlue} = 12'h34f;
     else if(h_cnt < 5 +320&& v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h350;
     else if(h_cnt < 10+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h351;
     else if(h_cnt < 15+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h352;
     else if(h_cnt < 20+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h353;
     else if(h_cnt < 25+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h354;
     else if(h_cnt < 30+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h355;
     else if(h_cnt < 35+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h356;
     else if(h_cnt < 40+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h357;
     else if(h_cnt < 45+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h358;
     else if(h_cnt < 50+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h359;
     else if(h_cnt < 55+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h35a;
     else if(h_cnt < 60+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h35b;
     else if(h_cnt < 65+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h35c;
     else if(h_cnt < 70+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h35d;
     else if(h_cnt < 75+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h35e;
     else if(h_cnt < 80+320 && v_cnt < 30)
          {vgaRed, vgaGreen, vgaBlue} = 12'h35f;
     else if(h_cnt < 5 +320&& v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h360;
     else if(h_cnt < 10+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h361;
     else if(h_cnt < 15+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h362;
     else if(h_cnt < 20+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h363;
     else if(h_cnt < 25+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h364;
     else if(h_cnt < 30+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h365;
     else if(h_cnt < 35+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h366;
     else if(h_cnt < 40+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h367;
     else if(h_cnt < 45+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h368;
     else if(h_cnt < 50+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h369;
     else if(h_cnt < 55+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h36a;
     else if(h_cnt < 60+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h36b;
     else if(h_cnt < 65+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h36c;
     else if(h_cnt < 70+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h36d;
     else if(h_cnt < 75+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h36e;
     else if(h_cnt < 80+320 && v_cnt < 35)
          {vgaRed, vgaGreen, vgaBlue} = 12'h36f;
     else if(h_cnt < 5 +320&& v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h370;
     else if(h_cnt < 10+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h371;
     else if(h_cnt < 15+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h372;
     else if(h_cnt < 20+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h373;
     else if(h_cnt < 25+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h374;
     else if(h_cnt < 30+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h375;
     else if(h_cnt < 35+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h376;
     else if(h_cnt < 40+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h377;
     else if(h_cnt < 45+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h378;
     else if(h_cnt < 50+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h379;
     else if(h_cnt < 55+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h37a;
     else if(h_cnt < 60+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h37b;
     else if(h_cnt < 65+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h37c;
     else if(h_cnt < 70+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h37d;
     else if(h_cnt < 75+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h37e;
     else if(h_cnt < 80+320 && v_cnt < 40)
          {vgaRed, vgaGreen, vgaBlue} = 12'h37f;
     else if(h_cnt < 5 +320&& v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h380;
     else if(h_cnt < 10+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h381;
     else if(h_cnt < 15+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h382;
     else if(h_cnt < 20+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h383;
     else if(h_cnt < 25+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h384;
     else if(h_cnt < 30+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h385;
     else if(h_cnt < 35+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h386;
     else if(h_cnt < 40+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h387;
     else if(h_cnt < 45+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h388;
     else if(h_cnt < 50+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h389;
     else if(h_cnt < 55+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h38a;
     else if(h_cnt < 60+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h38b;
     else if(h_cnt < 65+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h38c;
     else if(h_cnt < 70+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h38d;
     else if(h_cnt < 75+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h38e;
     else if(h_cnt < 80+320 && v_cnt < 45)
          {vgaRed, vgaGreen, vgaBlue} = 12'h38f;
     else if(h_cnt < 5 +320&& v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h390;
     else if(h_cnt < 10+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h391;
     else if(h_cnt < 15+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h392;
     else if(h_cnt < 20+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h393;
     else if(h_cnt < 25+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h394;
     else if(h_cnt < 30+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h395;
     else if(h_cnt < 35+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h396;
     else if(h_cnt < 40+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h397;
     else if(h_cnt < 45+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h398;
     else if(h_cnt < 50+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h399;
     else if(h_cnt < 55+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h39a;
     else if(h_cnt < 60+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h39b;
     else if(h_cnt < 65+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h39c;
     else if(h_cnt < 70+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h39d;
     else if(h_cnt < 75+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h39e;
     else if(h_cnt < 80+320 && v_cnt < 50)
          {vgaRed, vgaGreen, vgaBlue} = 12'h39f;
     else if(h_cnt < 5 +320&& v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a0;
     else if(h_cnt < 10+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a1;
     else if(h_cnt < 15+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a2;
     else if(h_cnt < 20+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a3;
     else if(h_cnt < 25+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a4;
     else if(h_cnt < 30+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a5;
     else if(h_cnt < 35+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a6;
     else if(h_cnt < 40+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a7;
     else if(h_cnt < 45+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a8;
     else if(h_cnt < 50+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3a9;
     else if(h_cnt < 55+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3aa;
     else if(h_cnt < 60+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ab;
     else if(h_cnt < 65+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ac;
     else if(h_cnt < 70+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ad;
     else if(h_cnt < 75+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ae;
     else if(h_cnt < 80+320 && v_cnt < 55)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3af;
     else if(h_cnt < 5 +320&& v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b0;
     else if(h_cnt < 10+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b1;
     else if(h_cnt < 15+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b2;
     else if(h_cnt < 20+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b3;
     else if(h_cnt < 25+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b4;
     else if(h_cnt < 30+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b5;
     else if(h_cnt < 35+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b6;
     else if(h_cnt < 40+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b7;
     else if(h_cnt < 45+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b8;
     else if(h_cnt < 50+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3b9;
     else if(h_cnt < 55+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ba;
     else if(h_cnt < 60+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3bb;
     else if(h_cnt < 65+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3bc;
     else if(h_cnt < 70+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3bd;
     else if(h_cnt < 75+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3be;
     else if(h_cnt < 80+320 && v_cnt < 60)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3bf;
     else if(h_cnt < 5 +320&& v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c0;
     else if(h_cnt < 10+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c1;
     else if(h_cnt < 15+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c2;
     else if(h_cnt < 20+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c3;
     else if(h_cnt < 25+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c4;
     else if(h_cnt < 30+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c5;
     else if(h_cnt < 35+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c6;
     else if(h_cnt < 40+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c7;
     else if(h_cnt < 45+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c8;
     else if(h_cnt < 50+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3c9;
     else if(h_cnt < 55+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ca;
     else if(h_cnt < 60+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3cb;
     else if(h_cnt < 65+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3cc;
     else if(h_cnt < 70+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3cd;
     else if(h_cnt < 75+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ce;
     else if(h_cnt < 80+320 && v_cnt < 65)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3cf;
     else if(h_cnt < 5 +320&& v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d0;
     else if(h_cnt < 10+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d1;
     else if(h_cnt < 15+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d2;
     else if(h_cnt < 20+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d3;
     else if(h_cnt < 25+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d4;
     else if(h_cnt < 30+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d5;
     else if(h_cnt < 35+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d6;
     else if(h_cnt < 40+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d7;
     else if(h_cnt < 45+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d8;
     else if(h_cnt < 50+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3d9;
     else if(h_cnt < 55+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3da;
     else if(h_cnt < 60+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3db;
     else if(h_cnt < 65+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3dc;
     else if(h_cnt < 70+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3dd;
     else if(h_cnt < 75+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3de;
     else if(h_cnt < 80+320 && v_cnt < 70)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3df;
     else if(h_cnt < 5 +320&& v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e0;
     else if(h_cnt < 10+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e1;
     else if(h_cnt < 15+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e2;
     else if(h_cnt < 20+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e3;
     else if(h_cnt < 25+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e4;
     else if(h_cnt < 30+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e5;
     else if(h_cnt < 35+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e6;
     else if(h_cnt < 40+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e7;
     else if(h_cnt < 45+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e8;
     else if(h_cnt < 50+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3e9;
     else if(h_cnt < 55+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ea;
     else if(h_cnt < 60+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3eb;
     else if(h_cnt < 65+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ec;
     else if(h_cnt < 70+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ed;
     else if(h_cnt < 75+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ee;
     else if(h_cnt < 80+320 && v_cnt < 75)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ef;
     else if(h_cnt < 5 +320&& v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f0;
     else if(h_cnt < 10+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f1;
     else if(h_cnt < 15+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f2;
     else if(h_cnt < 20+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f3;
     else if(h_cnt < 25+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f4;
     else if(h_cnt < 30+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f5;
     else if(h_cnt < 35+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f6;
     else if(h_cnt < 40+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f7;
     else if(h_cnt < 45+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f8;
     else if(h_cnt < 50+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3f9;
     else if(h_cnt < 55+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3fa;
     else if(h_cnt < 60+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3fb;
     else if(h_cnt < 65+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3fc;
     else if(h_cnt < 70+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3fd;
     else if(h_cnt < 75+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3fe;
     else if(h_cnt < 80+320 && v_cnt < 80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h3ff;






     else if(h_cnt < 5 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h400;
     else if(h_cnt < 10 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h401;
     else if(h_cnt < 15 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h402;
     else if(h_cnt < 20 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h403;
     else if(h_cnt < 25 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h404;
     else if(h_cnt < 30 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h405;
     else if(h_cnt < 35 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h406;
     else if(h_cnt < 40 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h407;
     else if(h_cnt < 45 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h408;
     else if(h_cnt < 50 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h409;
     else if(h_cnt < 55 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h40a;
     else if(h_cnt < 60 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h40b;
     else if(h_cnt < 65 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h40c;
     else if(h_cnt < 70 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h40d;
     else if(h_cnt < 75 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h40e;
     else if(h_cnt < 80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h40f;
     else if(h_cnt < 5 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h410;
     else if(h_cnt < 10 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h411;
     else if(h_cnt < 15 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h412;
     else if(h_cnt < 20 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h413;
     else if(h_cnt < 25 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h414;
     else if(h_cnt < 30 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h415;
     else if(h_cnt < 35 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h416;
     else if(h_cnt < 40 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h417;
     else if(h_cnt < 45 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h418;
     else if(h_cnt < 50 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h419;
     else if(h_cnt < 55 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h41a;
     else if(h_cnt < 60 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h41b;
     else if(h_cnt < 65 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h41c;
     else if(h_cnt < 70 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h41d;
     else if(h_cnt < 75 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h41e;
     else if(h_cnt < 80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h41f;
     else if(h_cnt < 5 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h420;
     else if(h_cnt < 10 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h421;
     else if(h_cnt < 15 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h422;
     else if(h_cnt < 20 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h423;
     else if(h_cnt < 25 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h424;
     else if(h_cnt < 30 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h425;
     else if(h_cnt < 35 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h426;
     else if(h_cnt < 40 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h427;
     else if(h_cnt < 45 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h428;
     else if(h_cnt < 50 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h429;
     else if(h_cnt < 55 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h42a;
     else if(h_cnt < 60 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h42b;
     else if(h_cnt < 65 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h42c;
     else if(h_cnt < 70 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h42d;
     else if(h_cnt < 75 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h42e;
     else if(h_cnt < 80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h42f;
     else if(h_cnt < 5 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h430;
     else if(h_cnt < 10 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h431;
     else if(h_cnt < 15 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h432;
     else if(h_cnt < 20 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h433;
     else if(h_cnt < 25 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h434;
     else if(h_cnt < 30 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h435;
     else if(h_cnt < 35 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h436;
     else if(h_cnt < 40 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h437;
     else if(h_cnt < 45 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h438;
     else if(h_cnt < 50 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h439;
     else if(h_cnt < 55 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h43a;
     else if(h_cnt < 60 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h43b;
     else if(h_cnt < 65 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h43c;
     else if(h_cnt < 70 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h43d;
     else if(h_cnt < 75 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h43e;
     else if(h_cnt < 80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h43f;
     else if(h_cnt < 5 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h440;
     else if(h_cnt < 10 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h441;
     else if(h_cnt < 15 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h442;
     else if(h_cnt < 20 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h443;
     else if(h_cnt < 25 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h444;
     else if(h_cnt < 30 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h445;
     else if(h_cnt < 35 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h446;
     else if(h_cnt < 40 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h447;
     else if(h_cnt < 45 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h448;
     else if(h_cnt < 50 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h449;
     else if(h_cnt < 55 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h44a;
     else if(h_cnt < 60 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h44b;
     else if(h_cnt < 65 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h44c;
     else if(h_cnt < 70 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h44d;
     else if(h_cnt < 75 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h44e;
     else if(h_cnt < 80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h44f;
     else if(h_cnt < 5 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h450;
     else if(h_cnt < 10 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h451;
     else if(h_cnt < 15 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h452;
     else if(h_cnt < 20 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h453;
     else if(h_cnt < 25 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h454;
     else if(h_cnt < 30 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h455;
     else if(h_cnt < 35 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h456;
     else if(h_cnt < 40 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h457;
     else if(h_cnt < 45 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h458;
     else if(h_cnt < 50 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h459;
     else if(h_cnt < 55 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h45a;
     else if(h_cnt < 60 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h45b;
     else if(h_cnt < 65 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h45c;
     else if(h_cnt < 70 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h45d;
     else if(h_cnt < 75 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h45e;
     else if(h_cnt < 80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h45f;
     else if(h_cnt < 5 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h460;
     else if(h_cnt < 10 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h461;
     else if(h_cnt < 15 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h462;
     else if(h_cnt < 20 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h463;
     else if(h_cnt < 25 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h464;
     else if(h_cnt < 30 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h465;
     else if(h_cnt < 35 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h466;
     else if(h_cnt < 40 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h467;
     else if(h_cnt < 45 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h468;
     else if(h_cnt < 50 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h469;
     else if(h_cnt < 55 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h46a;
     else if(h_cnt < 60 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h46b;
     else if(h_cnt < 65 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h46c;
     else if(h_cnt < 70 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h46d;
     else if(h_cnt < 75 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h46e;
     else if(h_cnt < 80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h46f;
     else if(h_cnt < 5 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h470;
     else if(h_cnt < 10 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h471;
     else if(h_cnt < 15 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h472;
     else if(h_cnt < 20 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h473;
     else if(h_cnt < 25 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h474;
     else if(h_cnt < 30 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h475;
     else if(h_cnt < 35 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h476;
     else if(h_cnt < 40 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h477;
     else if(h_cnt < 45 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h478;
     else if(h_cnt < 50 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h479;
     else if(h_cnt < 55 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h47a;
     else if(h_cnt < 60 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h47b;
     else if(h_cnt < 65 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h47c;
     else if(h_cnt < 70 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h47d;
     else if(h_cnt < 75 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h47e;
     else if(h_cnt < 80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h47f;
     else if(h_cnt < 5 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h480;
     else if(h_cnt < 10 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h481;
     else if(h_cnt < 15 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h482;
     else if(h_cnt < 20 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h483;
     else if(h_cnt < 25 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h484;
     else if(h_cnt < 30 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h485;
     else if(h_cnt < 35 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h486;
     else if(h_cnt < 40 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h487;
     else if(h_cnt < 45 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h488;
     else if(h_cnt < 50 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h489;
     else if(h_cnt < 55 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h48a;
     else if(h_cnt < 60 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h48b;
     else if(h_cnt < 65 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h48c;
     else if(h_cnt < 70 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h48d;
     else if(h_cnt < 75 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h48e;
     else if(h_cnt < 80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h48f;
     else if(h_cnt < 5 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h490;
     else if(h_cnt < 10 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h491;
     else if(h_cnt < 15 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h492;
     else if(h_cnt < 20 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h493;
     else if(h_cnt < 25 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h494;
     else if(h_cnt < 30 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h495;
     else if(h_cnt < 35 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h496;
     else if(h_cnt < 40 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h497;
     else if(h_cnt < 45 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h498;
     else if(h_cnt < 50 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h499;
     else if(h_cnt < 55 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h49a;
     else if(h_cnt < 60 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h49b;
     else if(h_cnt < 65 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h49c;
     else if(h_cnt < 70 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h49d;
     else if(h_cnt < 75 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h49e;
     else if(h_cnt < 80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h49f;
     else if(h_cnt < 5 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a0;
     else if(h_cnt < 10 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a1;
     else if(h_cnt < 15 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a2;
     else if(h_cnt < 20 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a3;
     else if(h_cnt < 25 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a4;
     else if(h_cnt < 30 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a5;
     else if(h_cnt < 35 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a6;
     else if(h_cnt < 40 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a7;
     else if(h_cnt < 45 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a8;
     else if(h_cnt < 50 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4a9;
     else if(h_cnt < 55 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4aa;
     else if(h_cnt < 60 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ab;
     else if(h_cnt < 65 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ac;
     else if(h_cnt < 70 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ad;
     else if(h_cnt < 75 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ae;
     else if(h_cnt < 80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4af;
     else if(h_cnt < 5 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b0;
     else if(h_cnt < 10 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b1;
     else if(h_cnt < 15 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b2;
     else if(h_cnt < 20 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b3;
     else if(h_cnt < 25 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b4;
     else if(h_cnt < 30 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b5;
     else if(h_cnt < 35 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b6;
     else if(h_cnt < 40 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b7;
     else if(h_cnt < 45 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b8;
     else if(h_cnt < 50 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4b9;
     else if(h_cnt < 55 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ba;
     else if(h_cnt < 60 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4bb;
     else if(h_cnt < 65 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4bc;
     else if(h_cnt < 70 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4bd;
     else if(h_cnt < 75 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4be;
     else if(h_cnt < 80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4bf;
     else if(h_cnt < 5 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c0;
     else if(h_cnt < 10 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c1;
     else if(h_cnt < 15 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c2;
     else if(h_cnt < 20 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c3;
     else if(h_cnt < 25 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c4;
     else if(h_cnt < 30 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c5;
     else if(h_cnt < 35 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c6;
     else if(h_cnt < 40 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c7;
     else if(h_cnt < 45 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c8;
     else if(h_cnt < 50 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4c9;
     else if(h_cnt < 55 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ca;
     else if(h_cnt < 60 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4cb;
     else if(h_cnt < 65 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4cc;
     else if(h_cnt < 70 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4cd;
     else if(h_cnt < 75 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ce;
     else if(h_cnt < 80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4cf;
     else if(h_cnt < 5 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d0;
     else if(h_cnt < 10 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d1;
     else if(h_cnt < 15 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d2;
     else if(h_cnt < 20 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d3;
     else if(h_cnt < 25 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d4;
     else if(h_cnt < 30 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d5;
     else if(h_cnt < 35 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d6;
     else if(h_cnt < 40 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d7;
     else if(h_cnt < 45 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d8;
     else if(h_cnt < 50 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4d9;
     else if(h_cnt < 55 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4da;
     else if(h_cnt < 60 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4db;
     else if(h_cnt < 65 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4dc;
     else if(h_cnt < 70 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4dd;
     else if(h_cnt < 75 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4de;
     else if(h_cnt < 80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4df;
     else if(h_cnt < 5 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e0;
     else if(h_cnt < 10 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e1;
     else if(h_cnt < 15 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e2;
     else if(h_cnt < 20 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e3;
     else if(h_cnt < 25 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e4;
     else if(h_cnt < 30 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e5;
     else if(h_cnt < 35 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e6;
     else if(h_cnt < 40 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e7;
     else if(h_cnt < 45 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e8;
     else if(h_cnt < 50 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4e9;
     else if(h_cnt < 55 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ea;
     else if(h_cnt < 60 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4eb;
     else if(h_cnt < 65 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ec;
     else if(h_cnt < 70 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ed;
     else if(h_cnt < 75 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ee;
     else if(h_cnt < 80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ef;
     else if(h_cnt < 5 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f0;
     else if(h_cnt < 10 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f1;
     else if(h_cnt < 15 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f2;
     else if(h_cnt < 20 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f3;
     else if(h_cnt < 25 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f4;
     else if(h_cnt < 30 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f5;
     else if(h_cnt < 35 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f6;
     else if(h_cnt < 40 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f7;
     else if(h_cnt < 45 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f8;
     else if(h_cnt < 50 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4f9;
     else if(h_cnt < 55 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4fa;
     else if(h_cnt < 60 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4fb;
     else if(h_cnt < 65 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4fc;
     else if(h_cnt < 70 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4fd;
     else if(h_cnt < 75 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4fe;
     else if(h_cnt < 80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h4ff;
     
     
     else if(h_cnt < 5 +80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h500;
     else if(h_cnt < 10+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h501;
     else if(h_cnt < 15+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h502;
     else if(h_cnt < 20+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h503;
     else if(h_cnt < 25+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h504;
     else if(h_cnt < 30+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h505;
     else if(h_cnt < 35+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h506;
     else if(h_cnt < 40+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h507;
     else if(h_cnt < 45+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h508;
     else if(h_cnt < 50+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h509;
     else if(h_cnt < 55+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h50a;
     else if(h_cnt < 60+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h50b;
     else if(h_cnt < 65+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h50c;
     else if(h_cnt < 70+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h50d;
     else if(h_cnt < 75+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h50e;
     else if(h_cnt < 80+80 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h50f;
     else if(h_cnt < 5 +80&& v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h510;
     else if(h_cnt < 10+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h511;
     else if(h_cnt < 15+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h512;
     else if(h_cnt < 20+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h513;
     else if(h_cnt < 25+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h514;
     else if(h_cnt < 30+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h515;
     else if(h_cnt < 35+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h516;
     else if(h_cnt < 40+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h517;
     else if(h_cnt < 45+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h518;
     else if(h_cnt < 50+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h519;
     else if(h_cnt < 55+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h51a;
     else if(h_cnt < 60+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h51b;
     else if(h_cnt < 65+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h51c;
     else if(h_cnt < 70+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h51d;
     else if(h_cnt < 75+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h51e;
     else if(h_cnt < 80+80 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h51f;
     else if(h_cnt < 5 +80&& v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h520;
     else if(h_cnt < 10+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h521;
     else if(h_cnt < 15+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h522;
     else if(h_cnt < 20+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h523;
     else if(h_cnt < 25+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h524;
     else if(h_cnt < 30+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h525;
     else if(h_cnt < 35+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h526;
     else if(h_cnt < 40+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h527;
     else if(h_cnt < 45+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h528;
     else if(h_cnt < 50+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h529;
     else if(h_cnt < 55+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h52a;
     else if(h_cnt < 60+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h52b;
     else if(h_cnt < 65+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h52c;
     else if(h_cnt < 70+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h52d;
     else if(h_cnt < 75+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h52e;
     else if(h_cnt < 80+80 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h52f;
     else if(h_cnt < 5 +80&& v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h530;
     else if(h_cnt < 10+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h531;
     else if(h_cnt < 15+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h532;
     else if(h_cnt < 20+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h533;
     else if(h_cnt < 25+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h534;
     else if(h_cnt < 30+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h535;
     else if(h_cnt < 35+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h536;
     else if(h_cnt < 40+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h537;
     else if(h_cnt < 45+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h538;
     else if(h_cnt < 50+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h539;
     else if(h_cnt < 55+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h53a;
     else if(h_cnt < 60+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h53b;
     else if(h_cnt < 65+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h53c;
     else if(h_cnt < 70+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h53d;
     else if(h_cnt < 75+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h53e;
     else if(h_cnt < 80+80 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h53f;
     else if(h_cnt < 5 +80&& v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h540;
     else if(h_cnt < 10+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h541;
     else if(h_cnt < 15+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h542;
     else if(h_cnt < 20+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h543;
     else if(h_cnt < 25+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h544;
     else if(h_cnt < 30+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h545;
     else if(h_cnt < 35+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h546;
     else if(h_cnt < 40+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h547;
     else if(h_cnt < 45+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h548;
     else if(h_cnt < 50+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h549;
     else if(h_cnt < 55+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h54a;
     else if(h_cnt < 60+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h54b;
     else if(h_cnt < 65+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h54c;
     else if(h_cnt < 70+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h54d;
     else if(h_cnt < 75+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h54e;
     else if(h_cnt < 80+80 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h54f;
     else if(h_cnt < 5 +80&& v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h550;
     else if(h_cnt < 10+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h551;
     else if(h_cnt < 15+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h552;
     else if(h_cnt < 20+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h553;
     else if(h_cnt < 25+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h554;
     else if(h_cnt < 30+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h555;
     else if(h_cnt < 35+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h556;
     else if(h_cnt < 40+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h557;
     else if(h_cnt < 45+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h558;
     else if(h_cnt < 50+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h559;
     else if(h_cnt < 55+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h55a;
     else if(h_cnt < 60+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h55b;
     else if(h_cnt < 65+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h55c;
     else if(h_cnt < 70+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h55d;
     else if(h_cnt < 75+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h55e;
     else if(h_cnt < 80+80 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h55f;
     else if(h_cnt < 5 +80&& v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h560;
     else if(h_cnt < 10+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h561;
     else if(h_cnt < 15+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h562;
     else if(h_cnt < 20+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h563;
     else if(h_cnt < 25+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h564;
     else if(h_cnt < 30+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h565;
     else if(h_cnt < 35+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h566;
     else if(h_cnt < 40+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h567;
     else if(h_cnt < 45+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h568;
     else if(h_cnt < 50+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h569;
     else if(h_cnt < 55+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h56a;
     else if(h_cnt < 60+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h56b;
     else if(h_cnt < 65+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h56c;
     else if(h_cnt < 70+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h56d;
     else if(h_cnt < 75+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h56e;
     else if(h_cnt < 80+80 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h56f;
     else if(h_cnt < 5 +80&& v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h570;
     else if(h_cnt < 10+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h571;
     else if(h_cnt < 15+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h572;
     else if(h_cnt < 20+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h573;
     else if(h_cnt < 25+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h574;
     else if(h_cnt < 30+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h575;
     else if(h_cnt < 35+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h576;
     else if(h_cnt < 40+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h577;
     else if(h_cnt < 45+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h578;
     else if(h_cnt < 50+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h579;
     else if(h_cnt < 55+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h57a;
     else if(h_cnt < 60+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h57b;
     else if(h_cnt < 65+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h57c;
     else if(h_cnt < 70+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h57d;
     else if(h_cnt < 75+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h57e;
     else if(h_cnt < 80+80 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h57f;
     else if(h_cnt < 5 +80&& v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h580;
     else if(h_cnt < 10+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h581;
     else if(h_cnt < 15+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h582;
     else if(h_cnt < 20+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h583;
     else if(h_cnt < 25+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h584;
     else if(h_cnt < 30+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h585;
     else if(h_cnt < 35+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h586;
     else if(h_cnt < 40+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h587;
     else if(h_cnt < 45+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h588;
     else if(h_cnt < 50+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h589;
     else if(h_cnt < 55+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h58a;
     else if(h_cnt < 60+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h58b;
     else if(h_cnt < 65+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h58c;
     else if(h_cnt < 70+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h58d;
     else if(h_cnt < 75+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h58e;
     else if(h_cnt < 80+80 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h58f;
     else if(h_cnt < 5 +80&& v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h590;
     else if(h_cnt < 10+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h591;
     else if(h_cnt < 15+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h592;
     else if(h_cnt < 20+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h593;
     else if(h_cnt < 25+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h594;
     else if(h_cnt < 30+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h595;
     else if(h_cnt < 35+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h596;
     else if(h_cnt < 40+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h597;
     else if(h_cnt < 45+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h598;
     else if(h_cnt < 50+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h599;
     else if(h_cnt < 55+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h59a;
     else if(h_cnt < 60+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h59b;
     else if(h_cnt < 65+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h59c;
     else if(h_cnt < 70+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h59d;
     else if(h_cnt < 75+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h59e;
     else if(h_cnt < 80+80 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h59f;
     else if(h_cnt < 5 +80&& v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a0;
     else if(h_cnt < 10+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a1;
     else if(h_cnt < 15+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a2;
     else if(h_cnt < 20+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a3;
     else if(h_cnt < 25+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a4;
     else if(h_cnt < 30+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a5;
     else if(h_cnt < 35+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a6;
     else if(h_cnt < 40+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a7;
     else if(h_cnt < 45+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a8;
     else if(h_cnt < 50+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5a9;
     else if(h_cnt < 55+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5aa;
     else if(h_cnt < 60+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ab;
     else if(h_cnt < 65+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ac;
     else if(h_cnt < 70+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ad;
     else if(h_cnt < 75+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ae;
     else if(h_cnt < 80+80 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5af;
     else if(h_cnt < 5 +80&& v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b0;
     else if(h_cnt < 10+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b1;
     else if(h_cnt < 15+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b2;
     else if(h_cnt < 20+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b3;
     else if(h_cnt < 25+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b4;
     else if(h_cnt < 30+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b5;
     else if(h_cnt < 35+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b6;
     else if(h_cnt < 40+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b7;
     else if(h_cnt < 45+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b8;
     else if(h_cnt < 50+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5b9;
     else if(h_cnt < 55+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ba;
     else if(h_cnt < 60+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5bb;
     else if(h_cnt < 65+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5bc;
     else if(h_cnt < 70+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5bd;
     else if(h_cnt < 75+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5be;
     else if(h_cnt < 80+80 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5bf;
     else if(h_cnt < 5 +80&& v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c0;
     else if(h_cnt < 10+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c1;
     else if(h_cnt < 15+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c2;
     else if(h_cnt < 20+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c3;
     else if(h_cnt < 25+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c4;
     else if(h_cnt < 30+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c5;
     else if(h_cnt < 35+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c6;
     else if(h_cnt < 40+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c7;
     else if(h_cnt < 45+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c8;
     else if(h_cnt < 50+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5c9;
     else if(h_cnt < 55+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ca;
     else if(h_cnt < 60+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5cb;
     else if(h_cnt < 65+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5cc;
     else if(h_cnt < 70+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5cd;
     else if(h_cnt < 75+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ce;
     else if(h_cnt < 80+80 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5cf;
     else if(h_cnt < 5 +80&& v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d0;
     else if(h_cnt < 10+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d1;
     else if(h_cnt < 15+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d2;
     else if(h_cnt < 20+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d3;
     else if(h_cnt < 25+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d4;
     else if(h_cnt < 30+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d5;
     else if(h_cnt < 35+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d6;
     else if(h_cnt < 40+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d7;
     else if(h_cnt < 45+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d8;
     else if(h_cnt < 50+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5d9;
     else if(h_cnt < 55+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5da;
     else if(h_cnt < 60+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5db;
     else if(h_cnt < 65+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5dc;
     else if(h_cnt < 70+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5dd;
     else if(h_cnt < 75+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5de;
     else if(h_cnt < 80+80 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5df;
     else if(h_cnt < 5 +80&& v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e0;
     else if(h_cnt < 10+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e1;
     else if(h_cnt < 15+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e2;
     else if(h_cnt < 20+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e3;
     else if(h_cnt < 25+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e4;
     else if(h_cnt < 30+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e5;
     else if(h_cnt < 35+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e6;
     else if(h_cnt < 40+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e7;
     else if(h_cnt < 45+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e8;
     else if(h_cnt < 50+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5e9;
     else if(h_cnt < 55+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ea;
     else if(h_cnt < 60+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5eb;
     else if(h_cnt < 65+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ec;
     else if(h_cnt < 70+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ed;
     else if(h_cnt < 75+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ee;
     else if(h_cnt < 80+80 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ef;
     else if(h_cnt < 5 +80&& v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f0;
     else if(h_cnt < 10+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f1;
     else if(h_cnt < 15+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f2;
     else if(h_cnt < 20+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f3;
     else if(h_cnt < 25+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f4;
     else if(h_cnt < 30+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f5;
     else if(h_cnt < 35+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f6;
     else if(h_cnt < 40+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f7;
     else if(h_cnt < 45+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f8;
     else if(h_cnt < 50+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5f9;
     else if(h_cnt < 55+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5fa;
     else if(h_cnt < 60+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5fb;
     else if(h_cnt < 65+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5fc;
     else if(h_cnt < 70+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5fd;
     else if(h_cnt < 75+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5fe;
     else if(h_cnt < 80+80 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h5ff;
     
     
     else if(h_cnt < 5 +160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h600;
     else if(h_cnt < 10+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h601;
     else if(h_cnt < 15+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h602;
     else if(h_cnt < 20+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h603;
     else if(h_cnt < 25+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h604;
     else if(h_cnt < 30+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h605;
     else if(h_cnt < 35+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h606;
     else if(h_cnt < 40+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h607;
     else if(h_cnt < 45+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h608;
     else if(h_cnt < 50+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h609;
     else if(h_cnt < 55+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h60a;
     else if(h_cnt < 60+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h60b;
     else if(h_cnt < 65+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h60c;
     else if(h_cnt < 70+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h60d;
     else if(h_cnt < 75+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h60e;
     else if(h_cnt < 80+160 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h60f;
     else if(h_cnt < 5 +160&& v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h610;
     else if(h_cnt < 10+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h611;
     else if(h_cnt < 15+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h612;
     else if(h_cnt < 20+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h613;
     else if(h_cnt < 25+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h614;
     else if(h_cnt < 30+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h615;
     else if(h_cnt < 35+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h616;
     else if(h_cnt < 40+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h617;
     else if(h_cnt < 45+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h618;
     else if(h_cnt < 50+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h619;
     else if(h_cnt < 55+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h61a;
     else if(h_cnt < 60+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h61b;
     else if(h_cnt < 65+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h61c;
     else if(h_cnt < 70+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h61d;
     else if(h_cnt < 75+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h61e;
     else if(h_cnt < 80+160 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h61f;
     else if(h_cnt < 5 +160&& v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h620;
     else if(h_cnt < 10+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h621;
     else if(h_cnt < 15+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h622;
     else if(h_cnt < 20+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h623;
     else if(h_cnt < 25+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h624;
     else if(h_cnt < 30+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h625;
     else if(h_cnt < 35+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h626;
     else if(h_cnt < 40+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h627;
     else if(h_cnt < 45+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h628;
     else if(h_cnt < 50+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h629;
     else if(h_cnt < 55+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h62a;
     else if(h_cnt < 60+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h62b;
     else if(h_cnt < 65+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h62c;
     else if(h_cnt < 70+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h62d;
     else if(h_cnt < 75+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h62e;
     else if(h_cnt < 80+160 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h62f;
     else if(h_cnt < 5 +160&& v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h630;
     else if(h_cnt < 10+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h631;
     else if(h_cnt < 15+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h632;
     else if(h_cnt < 20+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h633;
     else if(h_cnt < 25+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h634;
     else if(h_cnt < 30+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h635;
     else if(h_cnt < 35+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h636;
     else if(h_cnt < 40+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h637;
     else if(h_cnt < 45+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h638;
     else if(h_cnt < 50+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h639;
     else if(h_cnt < 55+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h63a;
     else if(h_cnt < 60+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h63b;
     else if(h_cnt < 65+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h63c;
     else if(h_cnt < 70+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h63d;
     else if(h_cnt < 75+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h63e;
     else if(h_cnt < 80+160 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h63f;
     else if(h_cnt < 5 +160&& v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h640;
     else if(h_cnt < 10+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h641;
     else if(h_cnt < 15+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h642;
     else if(h_cnt < 20+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h643;
     else if(h_cnt < 25+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h644;
     else if(h_cnt < 30+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h645;
     else if(h_cnt < 35+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h646;
     else if(h_cnt < 40+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h647;
     else if(h_cnt < 45+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h648;
     else if(h_cnt < 50+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h649;
     else if(h_cnt < 55+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h64a;
     else if(h_cnt < 60+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h64b;
     else if(h_cnt < 65+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h64c;
     else if(h_cnt < 70+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h64d;
     else if(h_cnt < 75+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h64e;
     else if(h_cnt < 80+160 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h64f;
     else if(h_cnt < 5 +160&& v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h650;
     else if(h_cnt < 10+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h651;
     else if(h_cnt < 15+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h652;
     else if(h_cnt < 20+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h653;
     else if(h_cnt < 25+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h654;
     else if(h_cnt < 30+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h655;
     else if(h_cnt < 35+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h656;
     else if(h_cnt < 40+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h657;
     else if(h_cnt < 45+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h658;
     else if(h_cnt < 50+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h659;
     else if(h_cnt < 55+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h65a;
     else if(h_cnt < 60+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h65b;
     else if(h_cnt < 65+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h65c;
     else if(h_cnt < 70+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h65d;
     else if(h_cnt < 75+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h65e;
     else if(h_cnt < 80+160 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h65f;
     else if(h_cnt < 5 +160&& v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h660;
     else if(h_cnt < 10+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h661;
     else if(h_cnt < 15+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h662;
     else if(h_cnt < 20+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h663;
     else if(h_cnt < 25+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h664;
     else if(h_cnt < 30+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h665;
     else if(h_cnt < 35+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h666;
     else if(h_cnt < 40+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h667;
     else if(h_cnt < 45+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h668;
     else if(h_cnt < 50+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h669;
     else if(h_cnt < 55+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h66a;
     else if(h_cnt < 60+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h66b;
     else if(h_cnt < 65+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h66c;
     else if(h_cnt < 70+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h66d;
     else if(h_cnt < 75+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h66e;
     else if(h_cnt < 80+160 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h66f;
     else if(h_cnt < 5 +160&& v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h670;
     else if(h_cnt < 10+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h671;
     else if(h_cnt < 15+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h672;
     else if(h_cnt < 20+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h673;
     else if(h_cnt < 25+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h674;
     else if(h_cnt < 30+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h675;
     else if(h_cnt < 35+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h676;
     else if(h_cnt < 40+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h677;
     else if(h_cnt < 45+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h678;
     else if(h_cnt < 50+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h679;
     else if(h_cnt < 55+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h67a;
     else if(h_cnt < 60+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h67b;
     else if(h_cnt < 65+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h67c;
     else if(h_cnt < 70+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h67d;
     else if(h_cnt < 75+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h67e;
     else if(h_cnt < 80+160 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h67f;
     else if(h_cnt < 5 +160&& v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h680;
     else if(h_cnt < 10+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h681;
     else if(h_cnt < 15+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h682;
     else if(h_cnt < 20+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h683;
     else if(h_cnt < 25+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h684;
     else if(h_cnt < 30+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h685;
     else if(h_cnt < 35+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h686;
     else if(h_cnt < 40+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h687;
     else if(h_cnt < 45+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h688;
     else if(h_cnt < 50+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h689;
     else if(h_cnt < 55+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h68a;
     else if(h_cnt < 60+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h68b;
     else if(h_cnt < 65+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h68c;
     else if(h_cnt < 70+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h68d;
     else if(h_cnt < 75+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h68e;
     else if(h_cnt < 80+160 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h68f;
     else if(h_cnt < 5 +160&& v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h690;
     else if(h_cnt < 10+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h691;
     else if(h_cnt < 15+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h692;
     else if(h_cnt < 20+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h693;
     else if(h_cnt < 25+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h694;
     else if(h_cnt < 30+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h695;
     else if(h_cnt < 35+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h696;
     else if(h_cnt < 40+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h697;
     else if(h_cnt < 45+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h698;
     else if(h_cnt < 50+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h699;
     else if(h_cnt < 55+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h69a;
     else if(h_cnt < 60+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h69b;
     else if(h_cnt < 65+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h69c;
     else if(h_cnt < 70+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h69d;
     else if(h_cnt < 75+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h69e;
     else if(h_cnt < 80+160 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h69f;
     else if(h_cnt < 5 +160&& v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a0;
     else if(h_cnt < 10+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a1;
     else if(h_cnt < 15+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a2;
     else if(h_cnt < 20+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a3;
     else if(h_cnt < 25+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a4;
     else if(h_cnt < 30+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a5;
     else if(h_cnt < 35+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a6;
     else if(h_cnt < 40+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a7;
     else if(h_cnt < 45+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a8;
     else if(h_cnt < 50+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6a9;
     else if(h_cnt < 55+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6aa;
     else if(h_cnt < 60+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ab;
     else if(h_cnt < 65+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ac;
     else if(h_cnt < 70+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ad;
     else if(h_cnt < 75+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ae;
     else if(h_cnt < 80+160 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6af;
     else if(h_cnt < 5 +160&& v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b0;
     else if(h_cnt < 10+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b1;
     else if(h_cnt < 15+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b2;
     else if(h_cnt < 20+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b3;
     else if(h_cnt < 25+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b4;
     else if(h_cnt < 30+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b5;
     else if(h_cnt < 35+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b6;
     else if(h_cnt < 40+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b7;
     else if(h_cnt < 45+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b8;
     else if(h_cnt < 50+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6b9;
     else if(h_cnt < 55+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ba;
     else if(h_cnt < 60+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6bb;
     else if(h_cnt < 65+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6bc;
     else if(h_cnt < 70+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6bd;
     else if(h_cnt < 75+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6be;
     else if(h_cnt < 80+160 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6bf;
     else if(h_cnt < 5 +160&& v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c0;
     else if(h_cnt < 10+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c1;
     else if(h_cnt < 15+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c2;
     else if(h_cnt < 20+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c3;
     else if(h_cnt < 25+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c4;
     else if(h_cnt < 30+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c5;
     else if(h_cnt < 35+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c6;
     else if(h_cnt < 40+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c7;
     else if(h_cnt < 45+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c8;
     else if(h_cnt < 50+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6c9;
     else if(h_cnt < 55+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ca;
     else if(h_cnt < 60+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6cb;
     else if(h_cnt < 65+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6cc;
     else if(h_cnt < 70+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6cd;
     else if(h_cnt < 75+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ce;
     else if(h_cnt < 80+160 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6cf;
     else if(h_cnt < 5 +160&& v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d0;
     else if(h_cnt < 10+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d1;
     else if(h_cnt < 15+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d2;
     else if(h_cnt < 20+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d3;
     else if(h_cnt < 25+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d4;
     else if(h_cnt < 30+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d5;
     else if(h_cnt < 35+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d6;
     else if(h_cnt < 40+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d7;
     else if(h_cnt < 45+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d8;
     else if(h_cnt < 50+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6d9;
     else if(h_cnt < 55+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6da;
     else if(h_cnt < 60+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6db;
     else if(h_cnt < 65+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6dc;
     else if(h_cnt < 70+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6dd;
     else if(h_cnt < 75+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6de;
     else if(h_cnt < 80+160 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6df;
     else if(h_cnt < 5 +160&& v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e0;
     else if(h_cnt < 10+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e1;
     else if(h_cnt < 15+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e2;
     else if(h_cnt < 20+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e3;
     else if(h_cnt < 25+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e4;
     else if(h_cnt < 30+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e5;
     else if(h_cnt < 35+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e6;
     else if(h_cnt < 40+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e7;
     else if(h_cnt < 45+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e8;
     else if(h_cnt < 50+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6e9;
     else if(h_cnt < 55+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ea;
     else if(h_cnt < 60+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6eb;
     else if(h_cnt < 65+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ec;
     else if(h_cnt < 70+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ed;
     else if(h_cnt < 75+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ee;
     else if(h_cnt < 80+160 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ef;
     else if(h_cnt < 5 +160&& v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f0;
     else if(h_cnt < 10+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f1;
     else if(h_cnt < 15+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f2;
     else if(h_cnt < 20+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f3;
     else if(h_cnt < 25+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f4;
     else if(h_cnt < 30+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f5;
     else if(h_cnt < 35+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f6;
     else if(h_cnt < 40+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f7;
     else if(h_cnt < 45+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f8;
     else if(h_cnt < 50+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6f9;
     else if(h_cnt < 55+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6fa;
     else if(h_cnt < 60+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6fb;
     else if(h_cnt < 65+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6fc;
     else if(h_cnt < 70+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6fd;
     else if(h_cnt < 75+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6fe;
     else if(h_cnt < 80+160 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h6ff;
     
     
     else if(h_cnt < 5 +320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h700;
     else if(h_cnt < 10+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h701;
     else if(h_cnt < 15+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h702;
     else if(h_cnt < 20+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h703;
     else if(h_cnt < 25+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h704;
     else if(h_cnt < 30+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h705;
     else if(h_cnt < 35+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h706;
     else if(h_cnt < 40+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h707;
     else if(h_cnt < 45+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h708;
     else if(h_cnt < 50+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h709;
     else if(h_cnt < 55+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h70a;
     else if(h_cnt < 60+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h70b;
     else if(h_cnt < 65+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h70c;
     else if(h_cnt < 70+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h70d;
     else if(h_cnt < 75+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h70e;
     else if(h_cnt < 80+320 && v_cnt < 5+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h70f;
     else if(h_cnt < 5 +320&& v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h710;
     else if(h_cnt < 10+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h711;
     else if(h_cnt < 15+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h712;
     else if(h_cnt < 20+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h713;
     else if(h_cnt < 25+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h714;
     else if(h_cnt < 30+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h715;
     else if(h_cnt < 35+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h716;
     else if(h_cnt < 40+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h717;
     else if(h_cnt < 45+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h718;
     else if(h_cnt < 50+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h719;
     else if(h_cnt < 55+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h71a;
     else if(h_cnt < 60+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h71b;
     else if(h_cnt < 65+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h71c;
     else if(h_cnt < 70+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h71d;
     else if(h_cnt < 75+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h71e;
     else if(h_cnt < 80+320 && v_cnt < 10+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h71f;
     else if(h_cnt < 5 +320&& v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h720;
     else if(h_cnt < 10+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h721;
     else if(h_cnt < 15+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h722;
     else if(h_cnt < 20+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h723;
     else if(h_cnt < 25+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h724;
     else if(h_cnt < 30+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h725;
     else if(h_cnt < 35+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h726;
     else if(h_cnt < 40+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h727;
     else if(h_cnt < 45+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h728;
     else if(h_cnt < 50+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h729;
     else if(h_cnt < 55+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h72a;
     else if(h_cnt < 60+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h72b;
     else if(h_cnt < 65+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h72c;
     else if(h_cnt < 70+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h72d;
     else if(h_cnt < 75+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h72e;
     else if(h_cnt < 80+320 && v_cnt < 15+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h72f;
     else if(h_cnt < 5 +320&& v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h730;
     else if(h_cnt < 10+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h731;
     else if(h_cnt < 15+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h732;
     else if(h_cnt < 20+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h733;
     else if(h_cnt < 25+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h734;
     else if(h_cnt < 30+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h735;
     else if(h_cnt < 35+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h736;
     else if(h_cnt < 40+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h737;
     else if(h_cnt < 45+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h738;
     else if(h_cnt < 50+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h739;
     else if(h_cnt < 55+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h73a;
     else if(h_cnt < 60+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h73b;
     else if(h_cnt < 65+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h73c;
     else if(h_cnt < 70+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h73d;
     else if(h_cnt < 75+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h73e;
     else if(h_cnt < 80+320 && v_cnt < 20+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h73f;
     else if(h_cnt < 5 +320&& v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h740;
     else if(h_cnt < 10+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h741;
     else if(h_cnt < 15+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h742;
     else if(h_cnt < 20+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h743;
     else if(h_cnt < 25+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h744;
     else if(h_cnt < 30+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h745;
     else if(h_cnt < 35+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h746;
     else if(h_cnt < 40+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h747;
     else if(h_cnt < 45+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h748;
     else if(h_cnt < 50+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h749;
     else if(h_cnt < 55+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h74a;
     else if(h_cnt < 60+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h74b;
     else if(h_cnt < 65+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h74c;
     else if(h_cnt < 70+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h74d;
     else if(h_cnt < 75+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h74e;
     else if(h_cnt < 80+320 && v_cnt < 25+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h74f;
     else if(h_cnt < 5 +320&& v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h750;
     else if(h_cnt < 10+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h751;
     else if(h_cnt < 15+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h752;
     else if(h_cnt < 20+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h753;
     else if(h_cnt < 25+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h754;
     else if(h_cnt < 30+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h755;
     else if(h_cnt < 35+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h756;
     else if(h_cnt < 40+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h757;
     else if(h_cnt < 45+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h758;
     else if(h_cnt < 50+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h759;
     else if(h_cnt < 55+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h75a;
     else if(h_cnt < 60+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h75b;
     else if(h_cnt < 65+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h75c;
     else if(h_cnt < 70+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h75d;
     else if(h_cnt < 75+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h75e;
     else if(h_cnt < 80+320 && v_cnt < 30+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h75f;
     else if(h_cnt < 5 +320&& v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h760;
     else if(h_cnt < 10+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h761;
     else if(h_cnt < 15+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h762;
     else if(h_cnt < 20+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h763;
     else if(h_cnt < 25+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h764;
     else if(h_cnt < 30+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h765;
     else if(h_cnt < 35+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h766;
     else if(h_cnt < 40+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h767;
     else if(h_cnt < 45+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h768;
     else if(h_cnt < 50+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h769;
     else if(h_cnt < 55+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h76a;
     else if(h_cnt < 60+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h76b;
     else if(h_cnt < 65+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h76c;
     else if(h_cnt < 70+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h76d;
     else if(h_cnt < 75+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h76e;
     else if(h_cnt < 80+320 && v_cnt < 35+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h76f;
     else if(h_cnt < 5 +320&& v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h770;
     else if(h_cnt < 10+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h771;
     else if(h_cnt < 15+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h772;
     else if(h_cnt < 20+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h773;
     else if(h_cnt < 25+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h774;
     else if(h_cnt < 30+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h775;
     else if(h_cnt < 35+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h776;
     else if(h_cnt < 40+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h777;
     else if(h_cnt < 45+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h778;
     else if(h_cnt < 50+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h779;
     else if(h_cnt < 55+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h77a;
     else if(h_cnt < 60+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h77b;
     else if(h_cnt < 65+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h77c;
     else if(h_cnt < 70+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h77d;
     else if(h_cnt < 75+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h77e;
     else if(h_cnt < 80+320 && v_cnt < 40+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h77f;
     else if(h_cnt < 5 +320&& v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h780;
     else if(h_cnt < 10+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h781;
     else if(h_cnt < 15+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h782;
     else if(h_cnt < 20+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h783;
     else if(h_cnt < 25+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h784;
     else if(h_cnt < 30+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h785;
     else if(h_cnt < 35+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h786;
     else if(h_cnt < 40+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h787;
     else if(h_cnt < 45+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h788;
     else if(h_cnt < 50+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h789;
     else if(h_cnt < 55+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h78a;
     else if(h_cnt < 60+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h78b;
     else if(h_cnt < 65+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h78c;
     else if(h_cnt < 70+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h78d;
     else if(h_cnt < 75+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h78e;
     else if(h_cnt < 80+320 && v_cnt < 45+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h78f;
     else if(h_cnt < 5 +320&& v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h790;
     else if(h_cnt < 10+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h791;
     else if(h_cnt < 15+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h792;
     else if(h_cnt < 20+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h793;
     else if(h_cnt < 25+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h794;
     else if(h_cnt < 30+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h795;
     else if(h_cnt < 35+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h796;
     else if(h_cnt < 40+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h797;
     else if(h_cnt < 45+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h798;
     else if(h_cnt < 50+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h799;
     else if(h_cnt < 55+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h79a;
     else if(h_cnt < 60+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h79b;
     else if(h_cnt < 65+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h79c;
     else if(h_cnt < 70+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h79d;
     else if(h_cnt < 75+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h79e;
     else if(h_cnt < 80+320 && v_cnt < 50+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h79f;
     else if(h_cnt < 5 +320&& v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a0;
     else if(h_cnt < 10+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a1;
     else if(h_cnt < 15+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a2;
     else if(h_cnt < 20+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a3;
     else if(h_cnt < 25+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a4;
     else if(h_cnt < 30+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a5;
     else if(h_cnt < 35+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a6;
     else if(h_cnt < 40+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a7;
     else if(h_cnt < 45+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a8;
     else if(h_cnt < 50+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7a9;
     else if(h_cnt < 55+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7aa;
     else if(h_cnt < 60+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ab;
     else if(h_cnt < 65+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ac;
     else if(h_cnt < 70+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ad;
     else if(h_cnt < 75+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ae;
     else if(h_cnt < 80+320 && v_cnt < 55+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7af;
     else if(h_cnt < 5 +320&& v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b0;
     else if(h_cnt < 10+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b1;
     else if(h_cnt < 15+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b2;
     else if(h_cnt < 20+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b3;
     else if(h_cnt < 25+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b4;
     else if(h_cnt < 30+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b5;
     else if(h_cnt < 35+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b6;
     else if(h_cnt < 40+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b7;
     else if(h_cnt < 45+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b8;
     else if(h_cnt < 50+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7b9;
     else if(h_cnt < 55+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ba;
     else if(h_cnt < 60+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7bb;
     else if(h_cnt < 65+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7bc;
     else if(h_cnt < 70+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7bd;
     else if(h_cnt < 75+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7be;
     else if(h_cnt < 80+320 && v_cnt < 60+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7bf;
     else if(h_cnt < 5 +320&& v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c0;
     else if(h_cnt < 10+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c1;
     else if(h_cnt < 15+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c2;
     else if(h_cnt < 20+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c3;
     else if(h_cnt < 25+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c4;
     else if(h_cnt < 30+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c5;
     else if(h_cnt < 35+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c6;
     else if(h_cnt < 40+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c7;
     else if(h_cnt < 45+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c8;
     else if(h_cnt < 50+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7c9;
     else if(h_cnt < 55+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ca;
     else if(h_cnt < 60+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7cb;
     else if(h_cnt < 65+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7cc;
     else if(h_cnt < 70+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7cd;
     else if(h_cnt < 75+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ce;
     else if(h_cnt < 80+320 && v_cnt < 65+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7cf;
     else if(h_cnt < 5 +320&& v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d0;
     else if(h_cnt < 10+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d1;
     else if(h_cnt < 15+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d2;
     else if(h_cnt < 20+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d3;
     else if(h_cnt < 25+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d4;
     else if(h_cnt < 30+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d5;
     else if(h_cnt < 35+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d6;
     else if(h_cnt < 40+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d7;
     else if(h_cnt < 45+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d8;
     else if(h_cnt < 50+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7d9;
     else if(h_cnt < 55+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7da;
     else if(h_cnt < 60+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7db;
     else if(h_cnt < 65+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7dc;
     else if(h_cnt < 70+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7dd;
     else if(h_cnt < 75+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7de;
     else if(h_cnt < 80+320 && v_cnt < 70+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7df;
     else if(h_cnt < 5 +320&& v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e0;
     else if(h_cnt < 10+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e1;
     else if(h_cnt < 15+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e2;
     else if(h_cnt < 20+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e3;
     else if(h_cnt < 25+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e4;
     else if(h_cnt < 30+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e5;
     else if(h_cnt < 35+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e6;
     else if(h_cnt < 40+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e7;
     else if(h_cnt < 45+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e8;
     else if(h_cnt < 50+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7e9;
     else if(h_cnt < 55+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ea;
     else if(h_cnt < 60+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7eb;
     else if(h_cnt < 65+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ec;
     else if(h_cnt < 70+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ed;
     else if(h_cnt < 75+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ee;
     else if(h_cnt < 80+320 && v_cnt < 75+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ef;
     else if(h_cnt < 5 +320&& v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f0;
     else if(h_cnt < 10+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f1;
     else if(h_cnt < 15+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f2;
     else if(h_cnt < 20+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f3;
     else if(h_cnt < 25+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f4;
     else if(h_cnt < 30+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f5;
     else if(h_cnt < 35+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f6;
     else if(h_cnt < 40+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f7;
     else if(h_cnt < 45+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f8;
     else if(h_cnt < 50+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7f9;
     else if(h_cnt < 55+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7fa;
     else if(h_cnt < 60+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7fb;
     else if(h_cnt < 65+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7fc;
     else if(h_cnt < 70+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7fd;
     else if(h_cnt < 75+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7fe;
     else if(h_cnt < 80+320 && v_cnt < 80+80)
          {vgaRed, vgaGreen, vgaBlue} = 12'h7ff;

          
          
          
          
     else if(h_cnt < 5 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h800;
     else if(h_cnt < 10 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h801;
     else if(h_cnt < 15 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h802;
     else if(h_cnt < 20 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h803;
     else if(h_cnt < 25 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h804;
     else if(h_cnt < 30 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h805;
     else if(h_cnt < 35 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h806;
     else if(h_cnt < 40 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h807;
     else if(h_cnt < 45 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h808;
     else if(h_cnt < 50 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h809;
     else if(h_cnt < 55 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80a;
     else if(h_cnt < 60 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80b;
     else if(h_cnt < 65 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80c;
     else if(h_cnt < 70 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80d;
     else if(h_cnt < 75 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80e;
     else if(h_cnt < 80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80f;
     else if(h_cnt < 5 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h810;
     else if(h_cnt < 10 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h811;
     else if(h_cnt < 15 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h812;
     else if(h_cnt < 20 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h813;
     else if(h_cnt < 25 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h814;
     else if(h_cnt < 30 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h815;
     else if(h_cnt < 35 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h816;
     else if(h_cnt < 40 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h817;
     else if(h_cnt < 45 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h818;
     else if(h_cnt < 50 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h819;
     else if(h_cnt < 55 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81a;
     else if(h_cnt < 60 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81b;
     else if(h_cnt < 65 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81c;
     else if(h_cnt < 70 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81d;
     else if(h_cnt < 75 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81e;
     else if(h_cnt < 80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81f;
     else if(h_cnt < 5 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h820;
     else if(h_cnt < 10 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h821;
     else if(h_cnt < 15 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h822;
     else if(h_cnt < 20 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h823;
     else if(h_cnt < 25 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h824;
     else if(h_cnt < 30 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h825;
     else if(h_cnt < 35 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h826;
     else if(h_cnt < 40 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h827;
     else if(h_cnt < 45 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h828;
     else if(h_cnt < 50 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h829;
     else if(h_cnt < 55 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82a;
     else if(h_cnt < 60 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82b;
     else if(h_cnt < 65 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82c;
     else if(h_cnt < 70 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82d;
     else if(h_cnt < 75 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82e;
     else if(h_cnt < 80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82f;
     else if(h_cnt < 5 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h830;
     else if(h_cnt < 10 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h831;
     else if(h_cnt < 15 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h832;
     else if(h_cnt < 20 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h833;
     else if(h_cnt < 25 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h834;
     else if(h_cnt < 30 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h835;
     else if(h_cnt < 35 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h836;
     else if(h_cnt < 40 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h837;
     else if(h_cnt < 45 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h838;
     else if(h_cnt < 50 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h839;
     else if(h_cnt < 55 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83a;
     else if(h_cnt < 60 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83b;
     else if(h_cnt < 65 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83c;
     else if(h_cnt < 70 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83d;
     else if(h_cnt < 75 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83e;
     else if(h_cnt < 80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83f;
     else if(h_cnt < 5 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h840;
     else if(h_cnt < 10 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h841;
     else if(h_cnt < 15 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h842;
     else if(h_cnt < 20 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h843;
     else if(h_cnt < 25 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h844;
     else if(h_cnt < 30 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h845;
     else if(h_cnt < 35 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h846;
     else if(h_cnt < 40 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h847;
     else if(h_cnt < 45 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h848;
     else if(h_cnt < 50 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h849;
     else if(h_cnt < 55 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84a;
     else if(h_cnt < 60 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84b;
     else if(h_cnt < 65 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84c;
     else if(h_cnt < 70 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84d;
     else if(h_cnt < 75 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84e;
     else if(h_cnt < 80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84f;
     else if(h_cnt < 5 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h850;
     else if(h_cnt < 10 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h851;
     else if(h_cnt < 15 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h852;
     else if(h_cnt < 20 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h853;
     else if(h_cnt < 25 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h854;
     else if(h_cnt < 30 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h855;
     else if(h_cnt < 35 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h856;
     else if(h_cnt < 40 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h857;
     else if(h_cnt < 45 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h858;
     else if(h_cnt < 50 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h859;
     else if(h_cnt < 55 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85a;
     else if(h_cnt < 60 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85b;
     else if(h_cnt < 65 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85c;
     else if(h_cnt < 70 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85d;
     else if(h_cnt < 75 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85e;
     else if(h_cnt < 80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85f;
     else if(h_cnt < 5 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h860;
     else if(h_cnt < 10 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h861;
     else if(h_cnt < 15 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h862;
     else if(h_cnt < 20 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h863;
     else if(h_cnt < 25 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h864;
     else if(h_cnt < 30 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h865;
     else if(h_cnt < 35 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h866;
     else if(h_cnt < 40 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h867;
     else if(h_cnt < 45 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h868;
     else if(h_cnt < 50 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h869;
     else if(h_cnt < 55 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86a;
     else if(h_cnt < 60 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86b;
     else if(h_cnt < 65 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86c;
     else if(h_cnt < 70 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86d;
     else if(h_cnt < 75 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86e;
     else if(h_cnt < 80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86f;
     else if(h_cnt < 5 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h870;
     else if(h_cnt < 10 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h871;
     else if(h_cnt < 15 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h872;
     else if(h_cnt < 20 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h873;
     else if(h_cnt < 25 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h874;
     else if(h_cnt < 30 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h875;
     else if(h_cnt < 35 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h876;
     else if(h_cnt < 40 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h877;
     else if(h_cnt < 45 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h878;
     else if(h_cnt < 50 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h879;
     else if(h_cnt < 55 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87a;
     else if(h_cnt < 60 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87b;
     else if(h_cnt < 65 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87c;
     else if(h_cnt < 70 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87d;
     else if(h_cnt < 75 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87e;
     else if(h_cnt < 80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87f;
     else if(h_cnt < 5 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h880;
     else if(h_cnt < 10 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h881;
     else if(h_cnt < 15 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h882;
     else if(h_cnt < 20 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h883;
     else if(h_cnt < 25 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h884;
     else if(h_cnt < 30 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h885;
     else if(h_cnt < 35 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h886;
     else if(h_cnt < 40 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h887;
     else if(h_cnt < 45 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h888;
     else if(h_cnt < 50 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h889;
     else if(h_cnt < 55 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88a;
     else if(h_cnt < 60 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88b;
     else if(h_cnt < 65 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88c;
     else if(h_cnt < 70 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88d;
     else if(h_cnt < 75 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88e;
     else if(h_cnt < 80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88f;
     else if(h_cnt < 5 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h890;
     else if(h_cnt < 10 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h891;
     else if(h_cnt < 15 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h892;
     else if(h_cnt < 20 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h893;
     else if(h_cnt < 25 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h894;
     else if(h_cnt < 30 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h895;
     else if(h_cnt < 35 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h896;
     else if(h_cnt < 40 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h897;
     else if(h_cnt < 45 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h898;
     else if(h_cnt < 50 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h899;
     else if(h_cnt < 55 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89a;
     else if(h_cnt < 60 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89b;
     else if(h_cnt < 65 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89c;
     else if(h_cnt < 70 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89d;
     else if(h_cnt < 75 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89e;
     else if(h_cnt < 80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89f;
     else if(h_cnt < 5 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a0;
     else if(h_cnt < 10 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a1;
     else if(h_cnt < 15 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a2;
     else if(h_cnt < 20 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a3;
     else if(h_cnt < 25 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a4;
     else if(h_cnt < 30 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a5;
     else if(h_cnt < 35 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a6;
     else if(h_cnt < 40 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a7;
     else if(h_cnt < 45 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a8;
     else if(h_cnt < 50 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a9;
     else if(h_cnt < 55 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8aa;
     else if(h_cnt < 60 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ab;
     else if(h_cnt < 65 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ac;
     else if(h_cnt < 70 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ad;
     else if(h_cnt < 75 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ae;
     else if(h_cnt < 80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8af;
     else if(h_cnt < 5 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b0;
     else if(h_cnt < 10 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b1;
     else if(h_cnt < 15 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b2;
     else if(h_cnt < 20 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b3;
     else if(h_cnt < 25 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b4;
     else if(h_cnt < 30 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b5;
     else if(h_cnt < 35 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b6;
     else if(h_cnt < 40 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b7;
     else if(h_cnt < 45 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b8;
     else if(h_cnt < 50 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b9;
     else if(h_cnt < 55 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ba;
     else if(h_cnt < 60 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bb;
     else if(h_cnt < 65 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bc;
     else if(h_cnt < 70 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bd;
     else if(h_cnt < 75 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8be;
     else if(h_cnt < 80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bf;
     else if(h_cnt < 5 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c0;
     else if(h_cnt < 10 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c1;
     else if(h_cnt < 15 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c2;
     else if(h_cnt < 20 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c3;
     else if(h_cnt < 25 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c4;
     else if(h_cnt < 30 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c5;
     else if(h_cnt < 35 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c6;
     else if(h_cnt < 40 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c7;
     else if(h_cnt < 45 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c8;
     else if(h_cnt < 50 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c9;
     else if(h_cnt < 55 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ca;
     else if(h_cnt < 60 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cb;
     else if(h_cnt < 65 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cc;
     else if(h_cnt < 70 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cd;
     else if(h_cnt < 75 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ce;
     else if(h_cnt < 80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cf;
     else if(h_cnt < 5 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d0;
     else if(h_cnt < 10 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d1;
     else if(h_cnt < 15 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d2;
     else if(h_cnt < 20 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d3;
     else if(h_cnt < 25 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d4;
     else if(h_cnt < 30 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d5;
     else if(h_cnt < 35 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d6;
     else if(h_cnt < 40 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d7;
     else if(h_cnt < 45 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d8;
     else if(h_cnt < 50 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d9;
     else if(h_cnt < 55 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8da;
     else if(h_cnt < 60 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8db;
     else if(h_cnt < 65 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dc;
     else if(h_cnt < 70 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dd;
     else if(h_cnt < 75 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8de;
     else if(h_cnt < 80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8df;
     else if(h_cnt < 5 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e0;
     else if(h_cnt < 10 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e1;
     else if(h_cnt < 15 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e2;
     else if(h_cnt < 20 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e3;
     else if(h_cnt < 25 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e4;
     else if(h_cnt < 30 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e5;
     else if(h_cnt < 35 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e6;
     else if(h_cnt < 40 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e7;
     else if(h_cnt < 45 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e8;
     else if(h_cnt < 50 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e9;
     else if(h_cnt < 55 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ea;
     else if(h_cnt < 60 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8eb;
     else if(h_cnt < 65 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ec;
     else if(h_cnt < 70 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ed;
     else if(h_cnt < 75 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ee;
     else if(h_cnt < 80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ef;
     else if(h_cnt < 5 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f0;
     else if(h_cnt < 10 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f1;
     else if(h_cnt < 15 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f2;
     else if(h_cnt < 20 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f3;
     else if(h_cnt < 25 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f4;
     else if(h_cnt < 30 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f5;
     else if(h_cnt < 35 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f6;
     else if(h_cnt < 40 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f7;
     else if(h_cnt < 45 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f8;
     else if(h_cnt < 50 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f9;
     else if(h_cnt < 55 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fa;
     else if(h_cnt < 60 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fb;
     else if(h_cnt < 65 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fc;
     else if(h_cnt < 70 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fd;
     else if(h_cnt < 75 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fe;
     else if(h_cnt < 80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ff;
     
     
     else if(h_cnt < 5 +80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h800;
     else if(h_cnt < 10+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h801;
     else if(h_cnt < 15+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h802;
     else if(h_cnt < 20+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h803;
     else if(h_cnt < 25+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h804;
     else if(h_cnt < 30+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h805;
     else if(h_cnt < 35+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h806;
     else if(h_cnt < 40+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h807;
     else if(h_cnt < 45+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h808;
     else if(h_cnt < 50+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h809;
     else if(h_cnt < 55+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80a;
     else if(h_cnt < 60+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80b;
     else if(h_cnt < 65+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80c;
     else if(h_cnt < 70+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80d;
     else if(h_cnt < 75+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80e;
     else if(h_cnt < 80+80 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80f;
     else if(h_cnt < 5 +80&& v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h810;
     else if(h_cnt < 10+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h811;
     else if(h_cnt < 15+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h812;
     else if(h_cnt < 20+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h813;
     else if(h_cnt < 25+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h814;
     else if(h_cnt < 30+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h815;
     else if(h_cnt < 35+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h816;
     else if(h_cnt < 40+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h817;
     else if(h_cnt < 45+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h818;
     else if(h_cnt < 50+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h819;
     else if(h_cnt < 55+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81a;
     else if(h_cnt < 60+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81b;
     else if(h_cnt < 65+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81c;
     else if(h_cnt < 70+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81d;
     else if(h_cnt < 75+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81e;
     else if(h_cnt < 80+80 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81f;
     else if(h_cnt < 5 +80&& v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h820;
     else if(h_cnt < 10+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h821;
     else if(h_cnt < 15+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h822;
     else if(h_cnt < 20+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h823;
     else if(h_cnt < 25+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h824;
     else if(h_cnt < 30+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h825;
     else if(h_cnt < 35+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h826;
     else if(h_cnt < 40+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h827;
     else if(h_cnt < 45+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h828;
     else if(h_cnt < 50+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h829;
     else if(h_cnt < 55+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82a;
     else if(h_cnt < 60+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82b;
     else if(h_cnt < 65+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82c;
     else if(h_cnt < 70+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82d;
     else if(h_cnt < 75+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82e;
     else if(h_cnt < 80+80 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82f;
     else if(h_cnt < 5 +80&& v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h830;
     else if(h_cnt < 10+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h831;
     else if(h_cnt < 15+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h832;
     else if(h_cnt < 20+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h833;
     else if(h_cnt < 25+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h834;
     else if(h_cnt < 30+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h835;
     else if(h_cnt < 35+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h836;
     else if(h_cnt < 40+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h837;
     else if(h_cnt < 45+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h838;
     else if(h_cnt < 50+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h839;
     else if(h_cnt < 55+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83a;
     else if(h_cnt < 60+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83b;
     else if(h_cnt < 65+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83c;
     else if(h_cnt < 70+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83d;
     else if(h_cnt < 75+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83e;
     else if(h_cnt < 80+80 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83f;
     else if(h_cnt < 5 +80&& v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h840;
     else if(h_cnt < 10+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h841;
     else if(h_cnt < 15+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h842;
     else if(h_cnt < 20+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h843;
     else if(h_cnt < 25+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h844;
     else if(h_cnt < 30+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h845;
     else if(h_cnt < 35+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h846;
     else if(h_cnt < 40+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h847;
     else if(h_cnt < 45+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h848;
     else if(h_cnt < 50+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h849;
     else if(h_cnt < 55+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84a;
     else if(h_cnt < 60+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84b;
     else if(h_cnt < 65+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84c;
     else if(h_cnt < 70+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84d;
     else if(h_cnt < 75+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84e;
     else if(h_cnt < 80+80 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84f;
     else if(h_cnt < 5 +80&& v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h850;
     else if(h_cnt < 10+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h851;
     else if(h_cnt < 15+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h852;
     else if(h_cnt < 20+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h853;
     else if(h_cnt < 25+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h854;
     else if(h_cnt < 30+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h855;
     else if(h_cnt < 35+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h856;
     else if(h_cnt < 40+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h857;
     else if(h_cnt < 45+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h858;
     else if(h_cnt < 50+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h859;
     else if(h_cnt < 55+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85a;
     else if(h_cnt < 60+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85b;
     else if(h_cnt < 65+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85c;
     else if(h_cnt < 70+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85d;
     else if(h_cnt < 75+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85e;
     else if(h_cnt < 80+80 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85f;
     else if(h_cnt < 5 +80&& v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h860;
     else if(h_cnt < 10+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h861;
     else if(h_cnt < 15+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h862;
     else if(h_cnt < 20+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h863;
     else if(h_cnt < 25+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h864;
     else if(h_cnt < 30+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h865;
     else if(h_cnt < 35+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h866;
     else if(h_cnt < 40+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h867;
     else if(h_cnt < 45+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h868;
     else if(h_cnt < 50+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h869;
     else if(h_cnt < 55+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86a;
     else if(h_cnt < 60+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86b;
     else if(h_cnt < 65+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86c;
     else if(h_cnt < 70+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86d;
     else if(h_cnt < 75+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86e;
     else if(h_cnt < 80+80 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86f;
     else if(h_cnt < 5 +80&& v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h870;
     else if(h_cnt < 10+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h871;
     else if(h_cnt < 15+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h872;
     else if(h_cnt < 20+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h873;
     else if(h_cnt < 25+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h874;
     else if(h_cnt < 30+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h875;
     else if(h_cnt < 35+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h876;
     else if(h_cnt < 40+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h877;
     else if(h_cnt < 45+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h878;
     else if(h_cnt < 50+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h879;
     else if(h_cnt < 55+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87a;
     else if(h_cnt < 60+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87b;
     else if(h_cnt < 65+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87c;
     else if(h_cnt < 70+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87d;
     else if(h_cnt < 75+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87e;
     else if(h_cnt < 80+80 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87f;
     else if(h_cnt < 5 +80&& v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h880;
     else if(h_cnt < 10+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h881;
     else if(h_cnt < 15+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h882;
     else if(h_cnt < 20+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h883;
     else if(h_cnt < 25+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h884;
     else if(h_cnt < 30+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h885;
     else if(h_cnt < 35+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h886;
     else if(h_cnt < 40+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h887;
     else if(h_cnt < 45+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h888;
     else if(h_cnt < 50+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h889;
     else if(h_cnt < 55+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88a;
     else if(h_cnt < 60+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88b;
     else if(h_cnt < 65+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88c;
     else if(h_cnt < 70+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88d;
     else if(h_cnt < 75+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88e;
     else if(h_cnt < 80+80 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88f;
     else if(h_cnt < 5 +80&& v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h890;
     else if(h_cnt < 10+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h891;
     else if(h_cnt < 15+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h892;
     else if(h_cnt < 20+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h893;
     else if(h_cnt < 25+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h894;
     else if(h_cnt < 30+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h895;
     else if(h_cnt < 35+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h896;
     else if(h_cnt < 40+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h897;
     else if(h_cnt < 45+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h898;
     else if(h_cnt < 50+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h899;
     else if(h_cnt < 55+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89a;
     else if(h_cnt < 60+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89b;
     else if(h_cnt < 65+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89c;
     else if(h_cnt < 70+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89d;
     else if(h_cnt < 75+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89e;
     else if(h_cnt < 80+80 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89f;
     else if(h_cnt < 5 +80&& v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a0;
     else if(h_cnt < 10+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a1;
     else if(h_cnt < 15+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a2;
     else if(h_cnt < 20+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a3;
     else if(h_cnt < 25+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a4;
     else if(h_cnt < 30+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a5;
     else if(h_cnt < 35+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a6;
     else if(h_cnt < 40+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a7;
     else if(h_cnt < 45+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a8;
     else if(h_cnt < 50+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a9;
     else if(h_cnt < 55+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8aa;
     else if(h_cnt < 60+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ab;
     else if(h_cnt < 65+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ac;
     else if(h_cnt < 70+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ad;
     else if(h_cnt < 75+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ae;
     else if(h_cnt < 80+80 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8af;
     else if(h_cnt < 5 +80&& v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b0;
     else if(h_cnt < 10+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b1;
     else if(h_cnt < 15+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b2;
     else if(h_cnt < 20+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b3;
     else if(h_cnt < 25+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b4;
     else if(h_cnt < 30+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b5;
     else if(h_cnt < 35+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b6;
     else if(h_cnt < 40+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b7;
     else if(h_cnt < 45+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b8;
     else if(h_cnt < 50+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b9;
     else if(h_cnt < 55+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ba;
     else if(h_cnt < 60+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bb;
     else if(h_cnt < 65+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bc;
     else if(h_cnt < 70+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bd;
     else if(h_cnt < 75+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8be;
     else if(h_cnt < 80+80 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bf;
     else if(h_cnt < 5 +80&& v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c0;
     else if(h_cnt < 10+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c1;
     else if(h_cnt < 15+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c2;
     else if(h_cnt < 20+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c3;
     else if(h_cnt < 25+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c4;
     else if(h_cnt < 30+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c5;
     else if(h_cnt < 35+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c6;
     else if(h_cnt < 40+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c7;
     else if(h_cnt < 45+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c8;
     else if(h_cnt < 50+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c9;
     else if(h_cnt < 55+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ca;
     else if(h_cnt < 60+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cb;
     else if(h_cnt < 65+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cc;
     else if(h_cnt < 70+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cd;
     else if(h_cnt < 75+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ce;
     else if(h_cnt < 80+80 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cf;
     else if(h_cnt < 5 +80&& v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d0;
     else if(h_cnt < 10+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d1;
     else if(h_cnt < 15+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d2;
     else if(h_cnt < 20+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d3;
     else if(h_cnt < 25+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d4;
     else if(h_cnt < 30+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d5;
     else if(h_cnt < 35+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d6;
     else if(h_cnt < 40+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d7;
     else if(h_cnt < 45+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d8;
     else if(h_cnt < 50+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d9;
     else if(h_cnt < 55+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8da;
     else if(h_cnt < 60+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8db;
     else if(h_cnt < 65+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dc;
     else if(h_cnt < 70+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dd;
     else if(h_cnt < 75+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8de;
     else if(h_cnt < 80+80 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8df;
     else if(h_cnt < 5 +80&& v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e0;
     else if(h_cnt < 10+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e1;
     else if(h_cnt < 15+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e2;
     else if(h_cnt < 20+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e3;
     else if(h_cnt < 25+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e4;
     else if(h_cnt < 30+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e5;
     else if(h_cnt < 35+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e6;
     else if(h_cnt < 40+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e7;
     else if(h_cnt < 45+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e8;
     else if(h_cnt < 50+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e9;
     else if(h_cnt < 55+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ea;
     else if(h_cnt < 60+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8eb;
     else if(h_cnt < 65+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ec;
     else if(h_cnt < 70+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ed;
     else if(h_cnt < 75+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ee;
     else if(h_cnt < 80+80 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ef;
     else if(h_cnt < 5 +80&& v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f0;
     else if(h_cnt < 10+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f1;
     else if(h_cnt < 15+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f2;
     else if(h_cnt < 20+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f3;
     else if(h_cnt < 25+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f4;
     else if(h_cnt < 30+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f5;
     else if(h_cnt < 35+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f6;
     else if(h_cnt < 40+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f7;
     else if(h_cnt < 45+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f8;
     else if(h_cnt < 50+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f9;
     else if(h_cnt < 55+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fa;
     else if(h_cnt < 60+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fb;
     else if(h_cnt < 65+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fc;
     else if(h_cnt < 70+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fd;
     else if(h_cnt < 75+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fe;
     else if(h_cnt < 80+80 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ff;
     
     
     else if(h_cnt < 5 +160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h800;
     else if(h_cnt < 10+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h801;
     else if(h_cnt < 15+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h802;
     else if(h_cnt < 20+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h803;
     else if(h_cnt < 25+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h804;
     else if(h_cnt < 30+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h805;
     else if(h_cnt < 35+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h806;
     else if(h_cnt < 40+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h807;
     else if(h_cnt < 45+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h808;
     else if(h_cnt < 50+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h809;
     else if(h_cnt < 55+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80a;
     else if(h_cnt < 60+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80b;
     else if(h_cnt < 65+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80c;
     else if(h_cnt < 70+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80d;
     else if(h_cnt < 75+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80e;
     else if(h_cnt < 80+160 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80f;
     else if(h_cnt < 5 +160&& v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h810;
     else if(h_cnt < 10+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h811;
     else if(h_cnt < 15+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h812;
     else if(h_cnt < 20+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h813;
     else if(h_cnt < 25+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h814;
     else if(h_cnt < 30+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h815;
     else if(h_cnt < 35+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h816;
     else if(h_cnt < 40+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h817;
     else if(h_cnt < 45+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h818;
     else if(h_cnt < 50+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h819;
     else if(h_cnt < 55+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81a;
     else if(h_cnt < 60+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81b;
     else if(h_cnt < 65+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81c;
     else if(h_cnt < 70+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81d;
     else if(h_cnt < 75+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81e;
     else if(h_cnt < 80+160 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81f;
     else if(h_cnt < 5 +160&& v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h820;
     else if(h_cnt < 10+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h821;
     else if(h_cnt < 15+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h822;
     else if(h_cnt < 20+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h823;
     else if(h_cnt < 25+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h824;
     else if(h_cnt < 30+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h825;
     else if(h_cnt < 35+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h826;
     else if(h_cnt < 40+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h827;
     else if(h_cnt < 45+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h828;
     else if(h_cnt < 50+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h829;
     else if(h_cnt < 55+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82a;
     else if(h_cnt < 60+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82b;
     else if(h_cnt < 65+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82c;
     else if(h_cnt < 70+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82d;
     else if(h_cnt < 75+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82e;
     else if(h_cnt < 80+160 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82f;
     else if(h_cnt < 5 +160&& v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h830;
     else if(h_cnt < 10+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h831;
     else if(h_cnt < 15+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h832;
     else if(h_cnt < 20+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h833;
     else if(h_cnt < 25+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h834;
     else if(h_cnt < 30+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h835;
     else if(h_cnt < 35+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h836;
     else if(h_cnt < 40+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h837;
     else if(h_cnt < 45+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h838;
     else if(h_cnt < 50+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h839;
     else if(h_cnt < 55+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83a;
     else if(h_cnt < 60+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83b;
     else if(h_cnt < 65+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83c;
     else if(h_cnt < 70+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83d;
     else if(h_cnt < 75+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83e;
     else if(h_cnt < 80+160 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83f;
     else if(h_cnt < 5 +160&& v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h840;
     else if(h_cnt < 10+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h841;
     else if(h_cnt < 15+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h842;
     else if(h_cnt < 20+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h843;
     else if(h_cnt < 25+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h844;
     else if(h_cnt < 30+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h845;
     else if(h_cnt < 35+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h846;
     else if(h_cnt < 40+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h847;
     else if(h_cnt < 45+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h848;
     else if(h_cnt < 50+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h849;
     else if(h_cnt < 55+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84a;
     else if(h_cnt < 60+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84b;
     else if(h_cnt < 65+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84c;
     else if(h_cnt < 70+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84d;
     else if(h_cnt < 75+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84e;
     else if(h_cnt < 80+160 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84f;
     else if(h_cnt < 5 +160&& v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h850;
     else if(h_cnt < 10+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h851;
     else if(h_cnt < 15+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h852;
     else if(h_cnt < 20+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h853;
     else if(h_cnt < 25+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h854;
     else if(h_cnt < 30+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h855;
     else if(h_cnt < 35+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h856;
     else if(h_cnt < 40+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h857;
     else if(h_cnt < 45+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h858;
     else if(h_cnt < 50+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h859;
     else if(h_cnt < 55+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85a;
     else if(h_cnt < 60+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85b;
     else if(h_cnt < 65+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85c;
     else if(h_cnt < 70+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85d;
     else if(h_cnt < 75+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85e;
     else if(h_cnt < 80+160 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85f;
     else if(h_cnt < 5 +160&& v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h860;
     else if(h_cnt < 10+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h861;
     else if(h_cnt < 15+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h862;
     else if(h_cnt < 20+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h863;
     else if(h_cnt < 25+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h864;
     else if(h_cnt < 30+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h865;
     else if(h_cnt < 35+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h866;
     else if(h_cnt < 40+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h867;
     else if(h_cnt < 45+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h868;
     else if(h_cnt < 50+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h869;
     else if(h_cnt < 55+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86a;
     else if(h_cnt < 60+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86b;
     else if(h_cnt < 65+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86c;
     else if(h_cnt < 70+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86d;
     else if(h_cnt < 75+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86e;
     else if(h_cnt < 80+160 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86f;
     else if(h_cnt < 5 +160&& v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h870;
     else if(h_cnt < 10+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h871;
     else if(h_cnt < 15+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h872;
     else if(h_cnt < 20+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h873;
     else if(h_cnt < 25+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h874;
     else if(h_cnt < 30+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h875;
     else if(h_cnt < 35+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h876;
     else if(h_cnt < 40+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h877;
     else if(h_cnt < 45+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h878;
     else if(h_cnt < 50+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h879;
     else if(h_cnt < 55+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87a;
     else if(h_cnt < 60+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87b;
     else if(h_cnt < 65+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87c;
     else if(h_cnt < 70+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87d;
     else if(h_cnt < 75+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87e;
     else if(h_cnt < 80+160 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87f;
     else if(h_cnt < 5 +160&& v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h880;
     else if(h_cnt < 10+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h881;
     else if(h_cnt < 15+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h882;
     else if(h_cnt < 20+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h883;
     else if(h_cnt < 25+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h884;
     else if(h_cnt < 30+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h885;
     else if(h_cnt < 35+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h886;
     else if(h_cnt < 40+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h887;
     else if(h_cnt < 45+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h888;
     else if(h_cnt < 50+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h889;
     else if(h_cnt < 55+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88a;
     else if(h_cnt < 60+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88b;
     else if(h_cnt < 65+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88c;
     else if(h_cnt < 70+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88d;
     else if(h_cnt < 75+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88e;
     else if(h_cnt < 80+160 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88f;
     else if(h_cnt < 5 +160&& v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h890;
     else if(h_cnt < 10+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h891;
     else if(h_cnt < 15+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h892;
     else if(h_cnt < 20+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h893;
     else if(h_cnt < 25+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h894;
     else if(h_cnt < 30+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h895;
     else if(h_cnt < 35+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h896;
     else if(h_cnt < 40+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h897;
     else if(h_cnt < 45+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h898;
     else if(h_cnt < 50+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h899;
     else if(h_cnt < 55+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89a;
     else if(h_cnt < 60+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89b;
     else if(h_cnt < 65+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89c;
     else if(h_cnt < 70+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89d;
     else if(h_cnt < 75+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89e;
     else if(h_cnt < 80+160 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89f;
     else if(h_cnt < 5 +160&& v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a0;
     else if(h_cnt < 10+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a1;
     else if(h_cnt < 15+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a2;
     else if(h_cnt < 20+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a3;
     else if(h_cnt < 25+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a4;
     else if(h_cnt < 30+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a5;
     else if(h_cnt < 35+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a6;
     else if(h_cnt < 40+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a7;
     else if(h_cnt < 45+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a8;
     else if(h_cnt < 50+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a9;
     else if(h_cnt < 55+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8aa;
     else if(h_cnt < 60+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ab;
     else if(h_cnt < 65+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ac;
     else if(h_cnt < 70+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ad;
     else if(h_cnt < 75+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ae;
     else if(h_cnt < 80+160 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8af;
     else if(h_cnt < 5 +160&& v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b0;
     else if(h_cnt < 10+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b1;
     else if(h_cnt < 15+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b2;
     else if(h_cnt < 20+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b3;
     else if(h_cnt < 25+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b4;
     else if(h_cnt < 30+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b5;
     else if(h_cnt < 35+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b6;
     else if(h_cnt < 40+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b7;
     else if(h_cnt < 45+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b8;
     else if(h_cnt < 50+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b9;
     else if(h_cnt < 55+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ba;
     else if(h_cnt < 60+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bb;
     else if(h_cnt < 65+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bc;
     else if(h_cnt < 70+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bd;
     else if(h_cnt < 75+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8be;
     else if(h_cnt < 80+160 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bf;
     else if(h_cnt < 5 +160&& v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c0;
     else if(h_cnt < 10+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c1;
     else if(h_cnt < 15+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c2;
     else if(h_cnt < 20+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c3;
     else if(h_cnt < 25+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c4;
     else if(h_cnt < 30+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c5;
     else if(h_cnt < 35+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c6;
     else if(h_cnt < 40+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c7;
     else if(h_cnt < 45+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c8;
     else if(h_cnt < 50+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c9;
     else if(h_cnt < 55+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ca;
     else if(h_cnt < 60+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cb;
     else if(h_cnt < 65+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cc;
     else if(h_cnt < 70+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cd;
     else if(h_cnt < 75+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ce;
     else if(h_cnt < 80+160 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cf;
     else if(h_cnt < 5 +160&& v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d0;
     else if(h_cnt < 10+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d1;
     else if(h_cnt < 15+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d2;
     else if(h_cnt < 20+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d3;
     else if(h_cnt < 25+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d4;
     else if(h_cnt < 30+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d5;
     else if(h_cnt < 35+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d6;
     else if(h_cnt < 40+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d7;
     else if(h_cnt < 45+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d8;
     else if(h_cnt < 50+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d9;
     else if(h_cnt < 55+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8da;
     else if(h_cnt < 60+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8db;
     else if(h_cnt < 65+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dc;
     else if(h_cnt < 70+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dd;
     else if(h_cnt < 75+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8de;
     else if(h_cnt < 80+160 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8df;
     else if(h_cnt < 5 +160&& v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e0;
     else if(h_cnt < 10+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e1;
     else if(h_cnt < 15+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e2;
     else if(h_cnt < 20+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e3;
     else if(h_cnt < 25+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e4;
     else if(h_cnt < 30+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e5;
     else if(h_cnt < 35+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e6;
     else if(h_cnt < 40+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e7;
     else if(h_cnt < 45+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e8;
     else if(h_cnt < 50+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e9;
     else if(h_cnt < 55+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ea;
     else if(h_cnt < 60+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8eb;
     else if(h_cnt < 65+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ec;
     else if(h_cnt < 70+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ed;
     else if(h_cnt < 75+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ee;
     else if(h_cnt < 80+160 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ef;
     else if(h_cnt < 5 +160&& v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f0;
     else if(h_cnt < 10+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f1;
     else if(h_cnt < 15+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f2;
     else if(h_cnt < 20+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f3;
     else if(h_cnt < 25+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f4;
     else if(h_cnt < 30+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f5;
     else if(h_cnt < 35+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f6;
     else if(h_cnt < 40+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f7;
     else if(h_cnt < 45+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f8;
     else if(h_cnt < 50+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f9;
     else if(h_cnt < 55+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fa;
     else if(h_cnt < 60+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fb;
     else if(h_cnt < 65+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fc;
     else if(h_cnt < 70+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fd;
     else if(h_cnt < 75+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fe;
     else if(h_cnt < 80+160 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ff;
     
     
     else if(h_cnt < 5 +320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h800;
     else if(h_cnt < 10+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h801;
     else if(h_cnt < 15+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h802;
     else if(h_cnt < 20+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h803;
     else if(h_cnt < 25+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h804;
     else if(h_cnt < 30+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h805;
     else if(h_cnt < 35+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h806;
     else if(h_cnt < 40+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h807;
     else if(h_cnt < 45+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h808;
     else if(h_cnt < 50+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h809;
     else if(h_cnt < 55+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80a;
     else if(h_cnt < 60+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80b;
     else if(h_cnt < 65+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80c;
     else if(h_cnt < 70+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80d;
     else if(h_cnt < 75+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80e;
     else if(h_cnt < 80+320 && v_cnt < 5+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h80f;
     else if(h_cnt < 5 +320&& v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h810;
     else if(h_cnt < 10+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h811;
     else if(h_cnt < 15+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h812;
     else if(h_cnt < 20+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h813;
     else if(h_cnt < 25+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h814;
     else if(h_cnt < 30+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h815;
     else if(h_cnt < 35+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h816;
     else if(h_cnt < 40+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h817;
     else if(h_cnt < 45+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h818;
     else if(h_cnt < 50+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h819;
     else if(h_cnt < 55+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81a;
     else if(h_cnt < 60+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81b;
     else if(h_cnt < 65+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81c;
     else if(h_cnt < 70+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81d;
     else if(h_cnt < 75+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81e;
     else if(h_cnt < 80+320 && v_cnt < 10+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h81f;
     else if(h_cnt < 5 +320&& v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h820;
     else if(h_cnt < 10+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h821;
     else if(h_cnt < 15+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h822;
     else if(h_cnt < 20+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h823;
     else if(h_cnt < 25+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h824;
     else if(h_cnt < 30+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h825;
     else if(h_cnt < 35+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h826;
     else if(h_cnt < 40+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h827;
     else if(h_cnt < 45+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h828;
     else if(h_cnt < 50+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h829;
     else if(h_cnt < 55+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82a;
     else if(h_cnt < 60+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82b;
     else if(h_cnt < 65+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82c;
     else if(h_cnt < 70+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82d;
     else if(h_cnt < 75+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82e;
     else if(h_cnt < 80+320 && v_cnt < 15+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h82f;
     else if(h_cnt < 5 +320&& v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h830;
     else if(h_cnt < 10+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h831;
     else if(h_cnt < 15+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h832;
     else if(h_cnt < 20+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h833;
     else if(h_cnt < 25+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h834;
     else if(h_cnt < 30+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h835;
     else if(h_cnt < 35+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h836;
     else if(h_cnt < 40+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h837;
     else if(h_cnt < 45+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h838;
     else if(h_cnt < 50+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h839;
     else if(h_cnt < 55+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83a;
     else if(h_cnt < 60+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83b;
     else if(h_cnt < 65+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83c;
     else if(h_cnt < 70+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83d;
     else if(h_cnt < 75+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83e;
     else if(h_cnt < 80+320 && v_cnt < 20+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h83f;
     else if(h_cnt < 5 +320&& v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h840;
     else if(h_cnt < 10+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h841;
     else if(h_cnt < 15+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h842;
     else if(h_cnt < 20+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h843;
     else if(h_cnt < 25+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h844;
     else if(h_cnt < 30+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h845;
     else if(h_cnt < 35+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h846;
     else if(h_cnt < 40+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h847;
     else if(h_cnt < 45+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h848;
     else if(h_cnt < 50+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h849;
     else if(h_cnt < 55+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84a;
     else if(h_cnt < 60+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84b;
     else if(h_cnt < 65+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84c;
     else if(h_cnt < 70+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84d;
     else if(h_cnt < 75+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84e;
     else if(h_cnt < 80+320 && v_cnt < 25+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h84f;
     else if(h_cnt < 5 +320&& v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h850;
     else if(h_cnt < 10+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h851;
     else if(h_cnt < 15+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h852;
     else if(h_cnt < 20+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h853;
     else if(h_cnt < 25+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h854;
     else if(h_cnt < 30+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h855;
     else if(h_cnt < 35+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h856;
     else if(h_cnt < 40+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h857;
     else if(h_cnt < 45+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h858;
     else if(h_cnt < 50+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h859;
     else if(h_cnt < 55+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85a;
     else if(h_cnt < 60+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85b;
     else if(h_cnt < 65+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85c;
     else if(h_cnt < 70+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85d;
     else if(h_cnt < 75+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85e;
     else if(h_cnt < 80+320 && v_cnt < 30+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h85f;
     else if(h_cnt < 5 +320&& v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h860;
     else if(h_cnt < 10+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h861;
     else if(h_cnt < 15+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h862;
     else if(h_cnt < 20+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h863;
     else if(h_cnt < 25+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h864;
     else if(h_cnt < 30+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h865;
     else if(h_cnt < 35+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h866;
     else if(h_cnt < 40+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h867;
     else if(h_cnt < 45+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h868;
     else if(h_cnt < 50+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h869;
     else if(h_cnt < 55+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86a;
     else if(h_cnt < 60+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86b;
     else if(h_cnt < 65+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86c;
     else if(h_cnt < 70+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86d;
     else if(h_cnt < 75+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86e;
     else if(h_cnt < 80+320 && v_cnt < 35+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h86f;
     else if(h_cnt < 5 +320&& v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h870;
     else if(h_cnt < 10+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h871;
     else if(h_cnt < 15+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h872;
     else if(h_cnt < 20+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h873;
     else if(h_cnt < 25+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h874;
     else if(h_cnt < 30+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h875;
     else if(h_cnt < 35+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h876;
     else if(h_cnt < 40+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h877;
     else if(h_cnt < 45+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h878;
     else if(h_cnt < 50+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h879;
     else if(h_cnt < 55+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87a;
     else if(h_cnt < 60+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87b;
     else if(h_cnt < 65+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87c;
     else if(h_cnt < 70+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87d;
     else if(h_cnt < 75+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87e;
     else if(h_cnt < 80+320 && v_cnt < 40+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h87f;
     else if(h_cnt < 5 +320&& v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h880;
     else if(h_cnt < 10+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h881;
     else if(h_cnt < 15+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h882;
     else if(h_cnt < 20+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h883;
     else if(h_cnt < 25+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h884;
     else if(h_cnt < 30+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h885;
     else if(h_cnt < 35+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h886;
     else if(h_cnt < 40+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h887;
     else if(h_cnt < 45+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h888;
     else if(h_cnt < 50+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h889;
     else if(h_cnt < 55+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88a;
     else if(h_cnt < 60+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88b;
     else if(h_cnt < 65+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88c;
     else if(h_cnt < 70+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88d;
     else if(h_cnt < 75+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88e;
     else if(h_cnt < 80+320 && v_cnt < 45+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h88f;
     else if(h_cnt < 5 +320&& v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h890;
     else if(h_cnt < 10+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h891;
     else if(h_cnt < 15+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h892;
     else if(h_cnt < 20+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h893;
     else if(h_cnt < 25+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h894;
     else if(h_cnt < 30+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h895;
     else if(h_cnt < 35+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h896;
     else if(h_cnt < 40+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h897;
     else if(h_cnt < 45+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h898;
     else if(h_cnt < 50+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h899;
     else if(h_cnt < 55+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89a;
     else if(h_cnt < 60+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89b;
     else if(h_cnt < 65+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89c;
     else if(h_cnt < 70+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89d;
     else if(h_cnt < 75+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89e;
     else if(h_cnt < 80+320 && v_cnt < 50+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h89f;
     else if(h_cnt < 5 +320&& v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a0;
     else if(h_cnt < 10+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a1;
     else if(h_cnt < 15+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a2;
     else if(h_cnt < 20+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a3;
     else if(h_cnt < 25+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a4;
     else if(h_cnt < 30+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a5;
     else if(h_cnt < 35+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a6;
     else if(h_cnt < 40+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a7;
     else if(h_cnt < 45+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a8;
     else if(h_cnt < 50+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8a9;
     else if(h_cnt < 55+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8aa;
     else if(h_cnt < 60+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ab;
     else if(h_cnt < 65+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ac;
     else if(h_cnt < 70+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ad;
     else if(h_cnt < 75+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ae;
     else if(h_cnt < 80+320 && v_cnt < 55+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8af;
     else if(h_cnt < 5 +320&& v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b0;
     else if(h_cnt < 10+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b1;
     else if(h_cnt < 15+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b2;
     else if(h_cnt < 20+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b3;
     else if(h_cnt < 25+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b4;
     else if(h_cnt < 30+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b5;
     else if(h_cnt < 35+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b6;
     else if(h_cnt < 40+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b7;
     else if(h_cnt < 45+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b8;
     else if(h_cnt < 50+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8b9;
     else if(h_cnt < 55+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ba;
     else if(h_cnt < 60+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bb;
     else if(h_cnt < 65+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bc;
     else if(h_cnt < 70+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bd;
     else if(h_cnt < 75+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8be;
     else if(h_cnt < 80+320 && v_cnt < 60+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8bf;
     else if(h_cnt < 5 +320&& v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c0;
     else if(h_cnt < 10+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c1;
     else if(h_cnt < 15+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c2;
     else if(h_cnt < 20+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c3;
     else if(h_cnt < 25+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c4;
     else if(h_cnt < 30+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c5;
     else if(h_cnt < 35+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c6;
     else if(h_cnt < 40+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c7;
     else if(h_cnt < 45+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c8;
     else if(h_cnt < 50+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8c9;
     else if(h_cnt < 55+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ca;
     else if(h_cnt < 60+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cb;
     else if(h_cnt < 65+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cc;
     else if(h_cnt < 70+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cd;
     else if(h_cnt < 75+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ce;
     else if(h_cnt < 80+320 && v_cnt < 65+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8cf;
     else if(h_cnt < 5 +320&& v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d0;
     else if(h_cnt < 10+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d1;
     else if(h_cnt < 15+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d2;
     else if(h_cnt < 20+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d3;
     else if(h_cnt < 25+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d4;
     else if(h_cnt < 30+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d5;
     else if(h_cnt < 35+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d6;
     else if(h_cnt < 40+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d7;
     else if(h_cnt < 45+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d8;
     else if(h_cnt < 50+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8d9;
     else if(h_cnt < 55+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8da;
     else if(h_cnt < 60+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8db;
     else if(h_cnt < 65+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dc;
     else if(h_cnt < 70+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8dd;
     else if(h_cnt < 75+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8de;
     else if(h_cnt < 80+320 && v_cnt < 70+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8df;
     else if(h_cnt < 5 +320&& v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e0;
     else if(h_cnt < 10+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e1;
     else if(h_cnt < 15+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e2;
     else if(h_cnt < 20+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e3;
     else if(h_cnt < 25+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e4;
     else if(h_cnt < 30+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e5;
     else if(h_cnt < 35+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e6;
     else if(h_cnt < 40+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e7;
     else if(h_cnt < 45+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e8;
     else if(h_cnt < 50+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8e9;
     else if(h_cnt < 55+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ea;
     else if(h_cnt < 60+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8eb;
     else if(h_cnt < 65+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ec;
     else if(h_cnt < 70+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ed;
     else if(h_cnt < 75+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ee;
     else if(h_cnt < 80+320 && v_cnt < 75+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ef;
     else if(h_cnt < 5 +320&& v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f0;
     else if(h_cnt < 10+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f1;
     else if(h_cnt < 15+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f2;
     else if(h_cnt < 20+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f3;
     else if(h_cnt < 25+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f4;
     else if(h_cnt < 30+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f5;
     else if(h_cnt < 35+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f6;
     else if(h_cnt < 40+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f7;
     else if(h_cnt < 45+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f8;
     else if(h_cnt < 50+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8f9;
     else if(h_cnt < 55+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fa;
     else if(h_cnt < 60+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fb;
     else if(h_cnt < 65+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fc;
     else if(h_cnt < 70+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fd;
     else if(h_cnt < 75+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8fe;
     else if(h_cnt < 80+320 && v_cnt < 80+160)
          {vgaRed, vgaGreen, vgaBlue} = 12'h8ff;
     else
          {vgaRed, vgaGreen, vgaBlue} = 12'h0;
     end
endmodule
