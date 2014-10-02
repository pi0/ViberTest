.class Lcom/viber/voip/phone/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/voip/phone/b/b;->a:Lcom/viber/voip/phone/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 131
    iget-object v0, p0, Lcom/viber/voip/phone/b/b;->a:Lcom/viber/voip/phone/b/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/viber/voip/util/gw;->a(Landroid/content/Context;Z)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0370

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c06f4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v0, 0x7f0c02b5

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
