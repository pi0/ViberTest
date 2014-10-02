.class Lcom/viber/voip/messages/controller/a/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ba;->e:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/ba;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/ba;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/ba;->c:Ljava/lang/String;

    iput p6, p0, Lcom/viber/voip/messages/controller/a/ba;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 460
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ba;->e:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 461
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/ba;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/ba;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/ba;->c:Ljava/lang/String;

    iget v5, p0, Lcom/viber/voip/messages/controller/a/ba;->d:I

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onHandleSelfDetails(JLjava/lang/String;Ljava/lang/String;I)Z

    .line 460
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method
