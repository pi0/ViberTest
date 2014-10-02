.class public Lcom/viber/voip/sms/SmsReplyActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Z

.field private static final x:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

.field private s:Landroid/view/View;

.field private t:Lcom/viber/voip/messages/ui/PttViewController;

.field private u:Z

.field private v:Landroid/view/View$OnTouchListener;

.field private w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    .line 301
    const-class v0, Lcom/viber/voip/sms/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sms/SmsReplyActivity;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->u:Z

    .line 283
    new-instance v0, Lcom/viber/voip/sms/q;

    invoke-direct {v0, p0}, Lcom/viber/voip/sms/q;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;)V

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->v:Landroid/view/View$OnTouchListener;

    .line 291
    new-instance v0, Lcom/viber/voip/sms/r;

    invoke-direct {v0, p0}, Lcom/viber/voip/sms/r;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;)V

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    const-string/jumbo v0, "SmsReplyActivity handleIntent"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "sms_body"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->m:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "sms_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->n:I

    .line 197
    iput-boolean v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->p:Z

    .line 198
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    new-instance v2, Lcom/viber/voip/sms/l;

    invoke-direct {v2, p0}, Lcom/viber/voip/sms/l;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/ag;)V

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/sms/SmsReplyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sms/SmsReplyActivity;->x:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->u:Z

    .line 128
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->m:Ljava/lang/String;

    iget v3, p0, Lcom/viber/voip/sms/SmsReplyActivity;->n:I

    const/4 v4, 0x1

    new-instance v5, Lcom/viber/voip/sms/k;

    invoke-direct {v5, p0, v0}, Lcom/viber/voip/sms/k;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/viber/voip/sms/s;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/viber/voip/messages/controller/ab;)V

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 222
    const v0, 0x7f070210

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->b:Landroid/view/View;

    .line 223
    const v0, 0x7f0703ab

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->c:Landroid/view/View;

    .line 224
    const v0, 0x7f0700d8

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->e:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0703ad

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->f:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f070249

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->d:Landroid/view/View;

    .line 227
    const v0, 0x7f0702a2

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->h:Landroid/widget/ImageButton;

    .line 228
    const v0, 0x7f0702ac

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->i:Landroid/widget/ImageButton;

    .line 229
    const v0, 0x7f0702aa

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    .line 230
    const v0, 0x7f0702ab

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    .line 231
    const v0, 0x7f0703ac

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->k:Landroid/widget/RelativeLayout;

    .line 232
    const v0, 0x7f070360

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->q:Landroid/view/View;

    .line 233
    const v0, 0x7f070361

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->r:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    .line 234
    const v0, 0x7f070362

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->s:Landroid/view/View;

    .line 235
    const v0, 0x7f070201

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/PttViewController;

    iput-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    .line 237
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    const v1, 0x7f0c0556

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 244
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->v:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->v:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->v:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->v:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 255
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->b:Landroid/view/View;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->r:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    new-instance v1, Lcom/viber/voip/sms/n;

    invoke-direct {v1, p0}, Lcom/viber/voip/sms/n;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->setStickerSelectListener(Lcom/viber/voip/messages/ui/popup/view/c;)V

    .line 269
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->s:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/sms/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/sms/o;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    new-instance v1, Lcom/viber/voip/sms/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/sms/p;-><init>(Lcom/viber/voip/sms/SmsReplyActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->setCallbacks(Lcom/viber/voip/messages/ui/dz;)V

    .line 281
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 325
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/PttViewController;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->s:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 335
    iget-object v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->a()J

    move-result-wide v2

    .line 338
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 339
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v4

    new-instance v5, Lcom/viber/voip/h/d;

    invoke-direct {v5, v2, v3}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v4, v0, v5, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 343
    :goto_0
    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 355
    :goto_1
    return-void

    .line 341
    :cond_1
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/h/d;

    iget-object v4, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/viber/voip/h/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    const v1, 0x7f020224

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    const v3, 0x7f02021f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 353
    iget-object v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method static synthetic g(Lcom/viber/voip/sms/SmsReplyActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/sms/SmsReplyActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/sms/SmsReplyActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->u:Z

    return v0
.end method

.method static synthetic j(Lcom/viber/voip/sms/SmsReplyActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->n:I

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 216
    const-string/jumbo v0, "SmsReplyActivity onBackPressed"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/viber/voip/sms/s;->g()V

    .line 218
    invoke-virtual {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->finish()V

    .line 219
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->m:Ljava/lang/String;

    iget v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->n:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/sms/s;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/viber/voip/messages/controller/ab;)V

    .line 148
    invoke-static {}, Lcom/viber/voip/sms/s;->g()V

    .line 149
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->x:Lcom/viber/voip/a/aa;

    iget-object v1, v1, Lcom/viber/voip/a/aa;->a:Lcom/viber/voip/a/af;

    invoke-virtual {v1}, Lcom/viber/voip/a/af;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->finish()V

    .line 173
    :goto_1
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    if-nez v0, :cond_3

    .line 154
    :cond_2
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/messages/j;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->j:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    invoke-direct {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->e()V

    .line 159
    invoke-direct {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->f()V

    goto :goto_1

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->c()V

    .line 163
    invoke-static {p0}, Lcom/viber/voip/sms/s;->a(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->x:Lcom/viber/voip/a/aa;

    iget-object v1, v1, Lcom/viber/voip/a/aa;->a:Lcom/viber/voip/a/af;

    invoke-virtual {v1}, Lcom/viber/voip/a/af;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->m:Ljava/lang/String;

    iget v2, p0, Lcom/viber/voip/sms/SmsReplyActivity;->n:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/sms/s;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/viber/voip/messages/controller/ab;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsReplyActivity onCreate newIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 81
    sget-boolean v0, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/viber/voip/ViberApplication;->startHomeActivity()V

    .line 83
    invoke-virtual {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/gl;->b(Landroid/app/Activity;)V

    .line 87
    const v0, 0x7f030123

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->d()V

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "SmsReplyActivity onDestroy"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsReplyActivity onNewIntent newIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    .line 96
    invoke-direct {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->b()V

    .line 97
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 117
    const-string/jumbo v0, "SmsReplyActivity onPause"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->c()V

    .line 120
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 121
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/h/d;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v0, v5, v1, v4}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 122
    iput-boolean v4, p0, Lcom/viber/voip/sms/SmsReplyActivity;->u:Z

    .line 123
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->b()V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->t:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->a()J

    move-result-wide v2

    .line 106
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 107
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v4

    new-instance v5, Lcom/viber/voip/h/d;

    invoke-direct {v5, v2, v3}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v4, v0, v5, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 112
    :goto_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onResume()V

    .line 113
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/h/d;

    iget-object v4, p0, Lcom/viber/voip/sms/SmsReplyActivity;->l:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/viber/voip/h/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/sms/SmsReplyActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    invoke-direct {p0}, Lcom/viber/voip/sms/SmsReplyActivity;->f()V

    .line 318
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "onUserInteraction"

    invoke-direct {p0, v0}, Lcom/viber/voip/sms/SmsReplyActivity;->a(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sms/SmsReplyActivity;->u:Z

    .line 136
    return-void
.end method
