.class public abstract Lcom/sec/android/app/music/player/a/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/music/player/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/music/player/a/b;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->a()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->b()I

    move-result v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    :sswitch_3
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->c()I

    move-result v0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :sswitch_5
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->e()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_6
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->f()I

    move-result v0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :sswitch_7
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 96
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/player/a/b;->a(Z)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_8
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/player/a/b;->b(Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 111
    :sswitch_9
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->g()Lcom/sec/android/app/music/player/data/MusicAlbumInfo;

    move-result-object v2

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v2, p3, v1}, Lcom/sec/android/app/music/player/data/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 119
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_a
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->h()I

    move-result v0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    :sswitch_b
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->i()I

    move-result v0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    :sswitch_c
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->j()I

    move-result v0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    :sswitch_d
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->k()Z

    move-result v2

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    :sswitch_e
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->l()I

    move-result v0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    :sswitch_f
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :sswitch_10
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->n()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :sswitch_11
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->o()I

    move-result v0

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    :sswitch_12
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->p()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :sswitch_13
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 200
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/player/a/b;->c(Z)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    :sswitch_14
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->q()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 213
    :sswitch_15
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->r()I

    move-result v0

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    :sswitch_16
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->s()I

    move-result v0

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    :sswitch_17
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->t()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    :sswitch_18
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->u()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 243
    :sswitch_19
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    if-gez v0, :cond_5

    .line 247
    const/4 v0, 0x0

    .line 252
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/player/a/b;->a([I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 250
    :cond_5
    new-array v0, v0, [I

    goto :goto_1

    .line 259
    :sswitch_1a
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->v()I

    move-result v0

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    :sswitch_1b
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->w()I

    move-result v0

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 275
    :sswitch_1c
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->x()Z

    move-result v2

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 283
    :sswitch_1d
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->y()I

    move-result v0

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 291
    :sswitch_1e
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->z()V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 298
    :sswitch_1f
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->A()Z

    move-result v2

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    :sswitch_20
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->B()Z

    move-result v2

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v2, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 314
    :sswitch_21
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->C()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 321
    :sswitch_22
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->D()V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 328
    :sswitch_23
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->E()V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 335
    :sswitch_24
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->F()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 342
    :sswitch_25
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->G()V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    :sswitch_26
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->H()V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 356
    :sswitch_27
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->I()V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 363
    :sswitch_28
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->J()V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 370
    :sswitch_29
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->K()V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 377
    :sswitch_2a
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->L()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 384
    :sswitch_2b
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->M()V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 391
    :sswitch_2c
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->N()V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 398
    :sswitch_2d
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->O()V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 405
    :sswitch_2e
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->P()V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 412
    :sswitch_2f
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->Q()V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 419
    :sswitch_30
    const-string/jumbo v2, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->R()Z

    move-result v2

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    :sswitch_31
    const-string/jumbo v0, "com.sec.android.app.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/music/player/a/b;->S()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
