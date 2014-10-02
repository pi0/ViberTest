.class Lcom/viber/voip/phone/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/y;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/y;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/viber/voip/phone/b/aa;->a:Lcom/viber/voip/phone/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/phone/b/aa;->a:Lcom/viber/voip/phone/b/y;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 171
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/viber/voip/phone/b/aa;->a:Lcom/viber/voip/phone/b/y;

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/b/y;->a(Ljava/lang/String;I)V

    .line 176
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 177
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/phone/b/aa;->a:Lcom/viber/voip/phone/b/y;

    aget-object v0, v0, p2

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/phone/b/y;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
