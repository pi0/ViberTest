.class public Lcom/viber/voip/ui/a/a;
.super Lcom/viber/voip/ui/a/d;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/viber/voip/ui/a/d;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ui/a/a;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/viber/voip/ui/a/a;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/ui/a/a;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/viber/voip/ui/a/a;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic c(Lcom/viber/voip/ui/a/a;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/viber/voip/ui/a/a;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/viber/voip/ui/a/a;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/viber/voip/ui/a/a;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/ui/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/ui/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Arguments must be supplied to build alert dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 34
    const-string/jumbo v3, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 35
    const-string/jumbo v4, "positive_button"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 36
    const-string/jumbo v5, "negative_button"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 37
    const-string/jumbo v6, "neutral_button"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "At least title or message must be supplied to build alert dialog"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/ui/a/a;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/ui/a/a;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/viber/voip/ui/a/a;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/viber/voip/ui/a/b;

    invoke-direct {v1, p0}, Lcom/viber/voip/ui/a/b;-><init>(Lcom/viber/voip/ui/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 68
    return-object v0
.end method
