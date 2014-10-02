.class public Lcom/viber/voip/settings/ui/bb;
.super Lcom/viber/voip/settings/ui/bv;
.source "SourceFile"


# instance fields
.field private b:Lcom/viber/voip/messages/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f050009

    invoke-direct {p0, v0}, Lcom/viber/voip/settings/ui/bv;-><init>(I)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/settings/ui/bb;)Lcom/viber/voip/messages/i;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bb;->b:Lcom/viber/voip/messages/i;

    return-object v0
.end method

.method public static a(Lcom/viber/voip/settings/l;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/viber/voip/settings/j;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ad()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 89
    invoke-static {}, Lcom/viber/voip/settings/j;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->af()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 90
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/viber/voip/settings/j;->al()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/settings/ui/bb;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 35
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/ui/bb;->b:Lcom/viber/voip/messages/i;

    .line 36
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/viber/voip/settings/ui/bv;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 54
    invoke-static {}, Lcom/viber/voip/settings/j;->al()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v1, 0x7f0c058a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c05d9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 57
    const v1, 0x7f0c058b

    new-instance v2, Lcom/viber/voip/settings/ui/bc;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/bc;-><init>(Lcom/viber/voip/settings/ui/bb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const v1, 0x7f0c058c

    new-instance v2, Lcom/viber/voip/settings/ui/be;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/be;-><init>(Lcom/viber/voip/settings/ui/bb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/viber/voip/settings/ui/bv;->onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/viber/voip/settings/j;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->m(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->m(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ad()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bb;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/viber/voip/settings/j;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/an;->n(Z)Lcom/viber/voip/a/x;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/an;->n(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->af()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/viber/voip/settings/ui/bb;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    goto :goto_0
.end method
