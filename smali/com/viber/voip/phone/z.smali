.class Lcom/viber/voip/phone/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/PhoneFragmentActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/PhoneFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/viber/voip/phone/z;->a:Lcom/viber/voip/phone/PhoneFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/PhoneFragmentActivity;Lcom/viber/voip/phone/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/z;-><init>(Lcom/viber/voip/phone/PhoneFragmentActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/viber/voip/phone/z;->a:Lcom/viber/voip/phone/PhoneFragmentActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->a(Lcom/viber/voip/phone/PhoneFragmentActivity;)Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 351
    new-instance v1, Lcom/viber/voip/phone/call/a/b;

    invoke-direct {v1, v0}, Lcom/viber/voip/phone/call/a/b;-><init>(Lcom/viber/voip/phone/call/k;)V

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/phone/call/a/b;->a(Lcom/viber/voip/phone/call/n;Z)V

    .line 352
    iget-object v0, p0, Lcom/viber/voip/phone/z;->a:Lcom/viber/voip/phone/PhoneFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneFragmentActivity;->finish()V

    .line 353
    return-void
.end method
