.class Lcom/viber/voip/phone/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/phone/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/viber/voip/phone/p;->b:Lcom/viber/voip/phone/PhoneActivity;

    iput-object p2, p0, Lcom/viber/voip/phone/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/viber/voip/phone/p;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/String;)V

    .line 596
    return-void
.end method
