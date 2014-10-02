.class Lcom/viber/voip/messages/controller/a/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/am;->i:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/am;->a:J

    iput p4, p0, Lcom/viber/voip/messages/controller/a/am;->b:I

    iput-wide p5, p0, Lcom/viber/voip/messages/controller/a/am;->c:J

    iput p7, p0, Lcom/viber/voip/messages/controller/a/am;->d:I

    iput-object p8, p0, Lcom/viber/voip/messages/controller/a/am;->e:[Ljava/lang/String;

    iput-object p9, p0, Lcom/viber/voip/messages/controller/a/am;->f:Ljava/util/Map;

    iput p10, p0, Lcom/viber/voip/messages/controller/a/am;->g:I

    iput p11, p0, Lcom/viber/voip/messages/controller/a/am;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/am;->i:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v12

    array-length v13, v12

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v0, v12, v11

    .line 299
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/am;->a:J

    iget v3, p0, Lcom/viber/voip/messages/controller/a/am;->b:I

    iget-wide v4, p0, Lcom/viber/voip/messages/controller/a/am;->c:J

    iget v6, p0, Lcom/viber/voip/messages/controller/a/am;->d:I

    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/am;->e:[Ljava/lang/String;

    iget-object v8, p0, Lcom/viber/voip/messages/controller/a/am;->f:Ljava/util/Map;

    iget v9, p0, Lcom/viber/voip/messages/controller/a/am;->g:I

    iget v10, p0, Lcom/viber/voip/messages/controller/a/am;->h:I

    invoke-virtual/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V

    .line 298
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method
