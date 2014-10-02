.class Lcom/viber/voip/messages/controller/a/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JJIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bq;->g:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/bq;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/a/bq;->b:J

    iput p6, p0, Lcom/viber/voip/messages/controller/a/bq;->c:I

    iput p7, p0, Lcom/viber/voip/messages/controller/a/bq;->d:I

    iput p8, p0, Lcom/viber/voip/messages/controller/a/bq;->e:I

    iput p9, p0, Lcom/viber/voip/messages/controller/a/bq;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bq;->g:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v0, v10, v9

    .line 181
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/bq;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/a/bq;->b:J

    iget v5, p0, Lcom/viber/voip/messages/controller/a/bq;->c:I

    iget v6, p0, Lcom/viber/voip/messages/controller/a/bq;->d:I

    iget v7, p0, Lcom/viber/voip/messages/controller/a/bq;->e:I

    iget v8, p0, Lcom/viber/voip/messages/controller/a/bq;->f:I

    invoke-virtual/range {v0 .. v8}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onChangeGroup(JJIIII)V

    .line 180
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method
