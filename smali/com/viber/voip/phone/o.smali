.class Lcom/viber/voip/phone/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ad;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/phone/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/PhoneActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/viber/voip/phone/o;->c:Lcom/viber/voip/phone/PhoneActivity;

    iput-object p2, p0, Lcom/viber/voip/phone/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/phone/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 3
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/viber/voip/phone/o;->c:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/phone/o;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/messages/conversation/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-void
.end method
