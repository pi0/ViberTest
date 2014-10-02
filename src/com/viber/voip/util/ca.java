package com.viber.voip.util;

public abstract class ca
{
  static final fc[] a;
  
  static
  {
    fc[] arrayOffc = new fc[78];
    arrayOffc[0] = new cb(fb.a);
    arrayOffc[1] = new cm(fb.b);
    arrayOffc[2] = new cx(fb.c);
    arrayOffc[3] = new di(fb.d);
    arrayOffc[4] = new dt(fb.e);
    arrayOffc[5] = new ee(fb.f);
    arrayOffc[6] = new ep(fb.g);
    arrayOffc[7] = new ez(fb.h);
    arrayOffc[8] = new fa(fb.i);
    arrayOffc[9] = new cc(fb.j);
    arrayOffc[10] = new cd(fb.k);
    arrayOffc[11] = new ce(fb.l);
    arrayOffc[12] = new cf(fb.m);
    arrayOffc[13] = new cg(fb.n);
    arrayOffc[14] = new ch(fb.o);
    arrayOffc[15] = new ci(fb.p);
    arrayOffc[16] = new cj(fb.q);
    arrayOffc[17] = new ck(fb.r);
    arrayOffc[18] = new cl(fb.s);
    arrayOffc[19] = new cn(fb.t);
    arrayOffc[20] = new co(fb.u);
    arrayOffc[21] = new cp(fb.v);
    arrayOffc[22] = new cq(fb.w);
    arrayOffc[23] = new cr(fb.x);
    arrayOffc[24] = new cs(fb.y);
    arrayOffc[25] = new ct(fb.z);
    arrayOffc[26] = new cu(fb.A);
    arrayOffc[27] = new cv(fb.B);
    arrayOffc[28] = new cw(fb.C);
    arrayOffc[29] = new cy(fb.D);
    arrayOffc[30] = new cz(fb.E);
    arrayOffc[31] = new da(fb.F);
    arrayOffc[32] = new db(fb.G);
    arrayOffc[33] = new dc(fb.H);
    arrayOffc[34] = new dd(fb.I);
    arrayOffc[35] = new de(fb.J);
    arrayOffc[36] = new df(fb.K);
    arrayOffc[37] = new dg(fb.L);
    arrayOffc[38] = new dh(fb.M);
    arrayOffc[39] = new dj(fb.N);
    arrayOffc[40] = new dk(fb.O);
    arrayOffc[41] = new dl(fb.P);
    arrayOffc[42] = new dm(fb.Q);
    arrayOffc[43] = new dn(fb.R);
    arrayOffc[44] = new do(fb.S);
    arrayOffc[45] = new dp(fb.T);
    arrayOffc[46] = new dq(fb.U);
    arrayOffc[47] = new dr(fb.V);
    arrayOffc[48] = new ds(fb.W);
    arrayOffc[49] = new du(fb.X);
    arrayOffc[50] = new dv(fb.Y);
    arrayOffc[51] = new dw(fb.Z);
    arrayOffc[52] = new dx(fb.aa);
    arrayOffc[53] = new dy(fb.ab);
    arrayOffc[54] = new dz(fb.ac);
    arrayOffc[55] = new ea(fb.ad);
    arrayOffc[56] = new eb(fb.ae);
    arrayOffc[57] = new ec(fb.af);
    arrayOffc[58] = new ed(fb.ag);
    arrayOffc[59] = new ef(fb.ah);
    arrayOffc[60] = new eg(fb.ai);
    arrayOffc[61] = new eh(fb.aj);
    arrayOffc[62] = new ei(fb.ak);
    arrayOffc[63] = new ej(fb.al);
    arrayOffc[64] = new ek(fb.am);
    arrayOffc[65] = new el(fb.an);
    arrayOffc[66] = new em(fb.ao);
    arrayOffc[67] = new en(fb.ap);
    arrayOffc[68] = new eo(fb.aq);
    arrayOffc[69] = new eq(fb.ar);
    arrayOffc[70] = new er(fb.as);
    arrayOffc[71] = new es(fb.at);
    arrayOffc[72] = new et(fb.au);
    arrayOffc[73] = new eu(fb.av);
    arrayOffc[74] = new ev(fb.aw);
    arrayOffc[75] = new ew(fb.ax);
    arrayOffc[76] = new ex(fb.ay);
    arrayOffc[77] = new ey(fb.az);
    a = arrayOffc;
  }
  
  public static final boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    label76:
    for (;;)
    {
      return false;
      for (int i = 0;; i++)
      {
        if (i >= paramString.length()) {
          break label76;
        }
        int j = Character.getDirectionality(paramString.charAt(i));
        if ((1 == j) || (2 == j) || (16 == j) || (17 == j)) {
          return true;
        }
        if ((j == 0) || (14 == j) || (15 == j)) {
          break;
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.ca
 * JD-Core Version:    0.7.0.1
 */