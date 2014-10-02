.class public Lcom/viber/voip/user/YouViberExperienceLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/extras/fb/ae;


# instance fields
.field private authListener:Lcom/viber/voip/messages/extras/fb/ad;

.field private final fbManager:Lcom/viber/voip/messages/extras/fb/s;

.field private mActivity:Landroid/app/Activity;

.field private mSmsMarginView:Landroid/view/View;

.field private mSmsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/user/YouViberExperienceLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v1, 0x7f07011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mSmsView:Landroid/view/View;

    .line 45
    const v1, 0x7f07011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mSmsMarginView:Landroid/view/View;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/user/YouViberExperienceLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->postFacebookInvite()V

    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/user/YouViberExperienceLayout;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private facebookClicked()V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/viber/voip/user/YouViberExperienceLayout$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/user/YouViberExperienceLayout$1;-><init>(Lcom/viber/voip/user/YouViberExperienceLayout;)V

    iput-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->authListener:Lcom/viber/voip/messages/extras/fb/ad;

    .line 94
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/extras/fb/ah;->c:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->postFacebookInvite()V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/extras/fb/ah;->b:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->authListener:Lcom/viber/voip/messages/extras/fb/ad;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->authListener:Lcom/viber/voip/messages/extras/fb/ad;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    goto :goto_0
.end method

.method private mailClicked()V
    .locals 5

    .prologue
    const v4, 0x7f0c04eb

    .line 128
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->h:Lcom/viber/voip/a/ba;

    invoke-virtual {v1}, Lcom/viber/voip/a/ba;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c04f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method private postFacebookInvite()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/viber/voip/messages/extras/fb/al;

    iget-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v2, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p0}, Lcom/viber/voip/messages/extras/fb/al;-><init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ae;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    :cond_0
    return-void
.end method

.method private smsClicked()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    .line 142
    const-string/jumbo v1, "sms:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    :goto_0
    const-string/jumbo v1, "sms_body"

    invoke-virtual {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/sms/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    return-void

    .line 144
    :cond_0
    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private twitterClicked()V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/viber/voip/user/YouViberExperienceLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/user/YouViberExperienceLayout$2;-><init>(Lcom/viber/voip/user/YouViberExperienceLayout;Lcom/viber/voip/messages/extras/twitter/l;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    return-void

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->facebookClicked()V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-direct {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->twitterClicked()V

    goto :goto_0

    .line 58
    :pswitch_3
    invoke-direct {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->mailClicked()V

    goto :goto_0

    .line 61
    :pswitch_4
    invoke-direct {p0}, Lcom/viber/voip/user/YouViberExperienceLayout;->smsClicked()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x7f07011a
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onFacebookValidationError()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->fbManager:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->authListener:Lcom/viber/voip/messages/extras/fb/ad;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    .line 113
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public setSmsVisible(Z)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mSmsView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mSmsMarginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/user/YouViberExperienceLayout;->mSmsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
