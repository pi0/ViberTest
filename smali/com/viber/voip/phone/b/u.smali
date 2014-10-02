.class public Lcom/viber/voip/phone/b/u;
.super Lcom/viber/voip/phone/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/g/b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/phone/b/c;-><init>()V

    .line 145
    return-void
.end method

.method private a()Lcom/viber/voip/phone/b/ag;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "fragment_call_keypad"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/b/ag;

    .line 114
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/viber/voip/phone/b/ag;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/ag;-><init>()V

    .line 116
    invoke-virtual {v0}, Lcom/viber/voip/phone/b/ag;->a()Lcom/viber/voip/phone/b/a/e;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/b/v;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/b/v;-><init>(Lcom/viber/voip/phone/b/u;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/b/a/e;->a(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/u;)Lcom/viber/voip/phone/b/ag;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/phone/b/u;->a()Lcom/viber/voip/phone/b/ag;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/viber/voip/phone/b/a;
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "fragment_call_controls"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/b/a;

    .line 129
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/viber/voip/phone/b/a;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/a;-><init>()V

    .line 131
    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a;->a()Lcom/viber/voip/phone/b/a/a;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/phone/b/w;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/b/w;-><init>(Lcom/viber/voip/phone/b/u;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/b/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getView()Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/b/u;->b(Z)V

    .line 95
    :cond_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v2, 0x400

    const/16 v1, 0xb

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/c;->onAttach(Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const v0, 0x7f0300f7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/u;->a:Landroid/view/View;

    .line 49
    iput-object p2, p0, Lcom/viber/voip/phone/b/u;->b:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/viber/voip/phone/b/u;->a:Landroid/view/View;

    const v1, 0x7f070351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/u;->c:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/phone/b/u;->c:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/phone/b/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/phone/b/x;-><init>(Lcom/viber/voip/phone/b/u;Lcom/viber/voip/phone/b/v;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070350

    invoke-direct {p0}, Lcom/viber/voip/phone/b/u;->b()Lcom/viber/voip/phone/b/a;

    move-result-object v2

    const-string/jumbo v3, "fragment_call_controls"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    iget-object v0, p0, Lcom/viber/voip/phone/b/u;->a:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onPause()V

    .line 85
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->f()Lcom/viber/voip/g/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/g/a;->a(Lcom/viber/voip/g/b;)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const v2, 0x7f020253

    .line 68
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onResume()V

    .line 69
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->f()Lcom/viber/voip/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/g/a;->a(Lcom/viber/voip/g/b;)V

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/phone/b/u;->d:Lcom/viber/voip/phone/call/k;

    if-eq v0, v1, :cond_0

    .line 72
    iput-object v0, p0, Lcom/viber/voip/phone/b/u;->d:Lcom/viber/voip/phone/call/k;

    .line 73
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/viber/voip/phone/b/u;->b:Landroid/view/View;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/viber/voip/phone/b/u;->a(Landroid/view/View;Landroid/net/Uri;I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/u;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/u;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
