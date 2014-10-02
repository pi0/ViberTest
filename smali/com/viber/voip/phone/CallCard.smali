.class public Lcom/viber/voip/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/viber/voip/widget/PausableChronometer;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/viber/voip/phone/b;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    const v1, 0x7f03006a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/CallCard;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Lcom/viber/voip/phone/call/n;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 200
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v6}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->h:Lcom/viber/voip/phone/b;

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lcom/viber/voip/phone/b;

    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/phone/b;-><init>(Lcom/viber/voip/phone/CallCard;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->h:Lcom/viber/voip/phone/b;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->h:Lcom/viber/voip/phone/b;

    invoke-static {v0, v5}, Lcom/viber/voip/phone/b;->a(Lcom/viber/voip/phone/b;I)I

    .line 211
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->h:Lcom/viber/voip/phone/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->setBase(J)V

    .line 214
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->start()V

    .line 215
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->h:Lcom/viber/voip/phone/b;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->h:Lcom/viber/voip/phone/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/PausableChronometer;->setMinWidth(I)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->setBase(J)V

    .line 225
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 226
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 234
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v6}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    const/4 v0, 0x3

    const-string/jumbo v1, "CallCard"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4180

    .line 361
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/viber/voip/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 362
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/viber/voip/phone/CallCard;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v3}, Lcom/viber/voip/phone/CallCard;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 363
    return-void
.end method

.method private b(Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/CallCard;->c(Lcom/viber/voip/phone/call/k;)V

    .line 162
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x4180

    .line 366
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 367
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/viber/voip/phone/CallCard;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v2}, Lcom/viber/voip/phone/CallCard;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 368
    return-void
.end method

.method private c(Lcom/viber/voip/phone/call/k;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    .line 182
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/CallCard;->d(Lcom/viber/voip/phone/call/k;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/CallCard;->e(Lcom/viber/voip/phone/call/k;)V

    .line 184
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/CallCard;->a(Lcom/viber/voip/phone/call/n;)V

    .line 186
    iget v0, p0, Lcom/viber/voip/phone/CallCard;->i:I

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/viber/voip/phone/CallCard;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/phone/CallCard;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private d(Lcom/viber/voip/phone/call/k;)V
    .locals 4
    .parameter

    .prologue
    const v0, 0x7f0c0351

    .line 289
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v2

    .line 292
    invoke-direct {p0}, Lcom/viber/voip/phone/CallCard;->b()V

    .line 293
    packed-switch v2, :pswitch_data_0

    .line 342
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCardTitleWidgets#unknown call state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/CallCard;->a(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 298
    :pswitch_1
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const v0, 0x7f0c0352

    .line 346
    :cond_0
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    const/4 v0, 0x5

    if-eq v2, v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 305
    :pswitch_3
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const v0, 0x7f0c035b

    goto :goto_1

    .line 308
    :cond_1
    const v0, 0x7f0c03b0

    .line 310
    goto :goto_1

    .line 312
    :pswitch_4
    const v0, 0x7f0c0353

    .line 313
    goto :goto_1

    .line 316
    :pswitch_5
    const v0, 0x7f0c0355

    .line 317
    goto :goto_1

    .line 319
    :pswitch_6
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 320
    const v0, 0x7f0c035a

    .line 328
    :goto_3
    invoke-direct {p0}, Lcom/viber/voip/phone/CallCard;->c()V

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 322
    const v0, 0x7f0c0359

    goto :goto_3

    .line 323
    :cond_3
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 324
    const v0, 0x7f0c0354

    goto :goto_3

    .line 326
    :cond_4
    const v0, 0x7f0c0356

    goto :goto_3

    .line 337
    :pswitch_7
    const v0, 0x7f0c0358

    .line 339
    invoke-direct {p0}, Lcom/viber/voip/phone/CallCard;->b()V

    goto :goto_1

    .line 352
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private e(Lcom/viber/voip/phone/call/k;)V
    .locals 4
    .parameter

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisplayForPerson("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/phone/CallCard;->a(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0370

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/CallCard;->setPhoto(Lcom/viber/voip/contacts/b/b;)V

    .line 401
    :cond_0
    const-string/jumbo v0, "....updateDisplayForPerson done"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/CallCard;->a(Ljava/lang/String;)V

    .line 402
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPhoto(Lcom/viber/voip/contacts/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 405
    new-instance v0, Lcom/viber/voip/phone/a;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/phone/a;-><init>(Lcom/viber/voip/phone/CallCard;Lcom/viber/voip/contacts/b/b;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->post(Ljava/lang/Runnable;)Z

    .line 419
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 2
    .parameter

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/viber/voip/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->c()V

    .line 256
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/CallCard;->b(Lcom/viber/voip/phone/call/k;)V

    .line 150
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "indicateViberOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/CallCard;->a(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/viber/voip/phone/CallCard;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    return-void

    .line 357
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getUpperTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/phone/CallCard;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 111
    :cond_0
    const v0, 0x7f0701ab

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->a:Landroid/widget/RelativeLayout;

    .line 112
    const v0, 0x7f0701ac

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->b:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0701ae

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->c:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0700d8

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->d:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0701af

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->e:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f07010d

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PausableChronometer;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    .line 123
    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/phone/CallCard;->g:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public setChronometerText(I)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->b()V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 265
    iget-object v0, p0, Lcom/viber/voip/phone/CallCard;->f:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/PausableChronometer;->setText(I)V

    .line 267
    return-void
.end method
