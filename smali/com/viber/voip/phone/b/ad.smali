.class Lcom/viber/voip/phone/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/viber/voip/phone/b/ad;->a:Lcom/viber/voip/phone/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/viber/voip/phone/b/ad;->a:Lcom/viber/voip/phone/b/ac;

    invoke-static {v0}, Lcom/viber/voip/phone/b/ac;->a(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->a(Ljava/lang/String;I)V

    .line 104
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ad;->a:Lcom/viber/voip/phone/b/ac;

    invoke-static {v0}, Lcom/viber/voip/phone/b/ac;->c(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/phone/PhoneActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/ad;->a:Lcom/viber/voip/phone/b/ac;

    invoke-static {v1}, Lcom/viber/voip/phone/b/ac;->b(Lcom/viber/voip/phone/b/ac;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
