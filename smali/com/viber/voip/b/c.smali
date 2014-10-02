.class Lcom/viber/voip/b/c;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J

.field final synthetic i:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic j:Lcom/viber/voip/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLcom/viber/jni/PhoneControllerWrapper;)V
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
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/viber/voip/b/c;->j:Lcom/viber/voip/b/a;

    iput-object p2, p0, Lcom/viber/voip/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/b/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/b/c;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/voip/b/c;->d:J

    iput-wide p7, p0, Lcom/viber/voip/b/c;->e:J

    iput-object p9, p0, Lcom/viber/voip/b/c;->f:Ljava/lang/String;

    iput-object p10, p0, Lcom/viber/voip/b/c;->g:Ljava/lang/String;

    iput-wide p11, p0, Lcom/viber/voip/b/c;->h:J

    iput-object p13, p0, Lcom/viber/voip/b/c;->i:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onLBServerTime(J)V
    .locals 14
    .parameter

    .prologue
    .line 380
    invoke-super/range {p0 .. p2}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onLBServerTime(J)V

    .line 381
    iget-object v0, p0, Lcom/viber/voip/b/c;->j:Lcom/viber/voip/b/a;

    iget-object v1, p0, Lcom/viber/voip/b/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/b/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/b/c;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/viber/voip/b/c;->d:J

    iget-wide v6, p0, Lcom/viber/voip/b/c;->e:J

    iget-object v8, p0, Lcom/viber/voip/b/c;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/viber/voip/b/c;->g:Ljava/lang/String;

    iget-wide v10, p0, Lcom/viber/voip/b/c;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, p1

    invoke-static/range {v0 .. v13}, Lcom/viber/voip/b/a;->a(Lcom/viber/voip/b/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJ)V

    .line 382
    iget-object v0, p0, Lcom/viber/voip/b/c;->i:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 383
    return-void
.end method
