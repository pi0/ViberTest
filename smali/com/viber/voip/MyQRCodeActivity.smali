.class public Lcom/viber/voip/MyQRCodeActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Lcom/viber/voip/util/b/w;

.field private d:Lcom/viber/voip/util/b/x;

.field private e:Landroid/os/Handler;

.field private final f:Lcom/viber/voip/util/b/al;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/viber/voip/ap;

    invoke-direct {v0, p0}, Lcom/viber/voip/ap;-><init>(Lcom/viber/voip/MyQRCodeActivity;)V

    iput-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->f:Lcom/viber/voip/util/b/al;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/MyQRCodeActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/MyQRCodeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/viber/voip/MyQRCodeActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/MyQRCodeActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->e:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/aq;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/aq;-><init>(Lcom/viber/voip/MyQRCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter

    .prologue
    .line 140
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->h:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/viber/voip/MyQRCodeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/MyQRCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    invoke-static {p1}, Lcom/viber/voip/api/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    invoke-static {p1}, Lcom/viber/voip/MyQRCodeActivity;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x50

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Z)Landroid/net/Uri;

    .line 124
    new-instance v1, Lcom/viber/voip/ar;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/ar;-><init>(Lcom/viber/voip/MyQRCodeActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/MyQRCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 90
    :pswitch_0
    invoke-static {p0}, Lcom/viber/voip/util/gz;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f070332
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0300ed

    invoke-virtual {p0, v0}, Lcom/viber/voip/MyQRCodeActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/MyQRCodeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-static {p0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->c:Lcom/viber/voip/util/b/w;

    .line 56
    invoke-static {}, Lcom/viber/voip/util/b/x;->a()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->d:Lcom/viber/voip/util/b/x;

    .line 57
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->e:Landroid/os/Handler;

    .line 59
    const v0, 0x7f070333

    invoke-virtual {p0, v0}, Lcom/viber/voip/MyQRCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->a:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/MyQRCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->b:Landroid/view/View;

    .line 61
    const v0, 0x7f070332

    invoke-virtual {p0, v0}, Lcom/viber/voip/MyQRCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Lcom/viber/voip/MyQRCodeActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/viber/voip/MyQRCodeActivity;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/viber/voip/MyQRCodeActivity;->c:Lcom/viber/voip/util/b/w;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/MyQRCodeActivity;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/MyQRCodeActivity;->d:Lcom/viber/voip/util/b/x;

    iget-object v4, p0, Lcom/viber/voip/MyQRCodeActivity;->f:Lcom/viber/voip/util/b/al;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 83
    :goto_1
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0, v0}, Lcom/viber/voip/MyQRCodeActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 103
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/MyQRCodeActivity;->onBackPressed()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
