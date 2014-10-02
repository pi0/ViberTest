.class public Lcom/viber/voip/settings/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/settings/b;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/settings/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/viber/voip/settings/c;->b:Lcom/viber/voip/settings/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/viber/voip/settings/c;->a:Ljava/lang/String;

    .line 258
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/settings/c;->b:Lcom/viber/voip/settings/b;

    iget-object v1, p0, Lcom/viber/voip/settings/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/settings/c;->b:Lcom/viber/voip/settings/b;

    iget-object v1, v1, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 264
    return-void
.end method
