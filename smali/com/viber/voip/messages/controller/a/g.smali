.class Lcom/viber/voip/messages/controller/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/v;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/controller/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/c;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/g;->b:Lcom/viber/voip/messages/controller/a/c;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/g;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/q;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/g;->b:Lcom/viber/voip/messages/controller/a/c;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/g;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->handleSendUpdateSelfUserDetailsAck(J)Z

    .line 174
    return-void
.end method
