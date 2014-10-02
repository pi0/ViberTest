.class public Lcom/viber/voip/settings/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/Object;

.field final synthetic c:Lcom/viber/voip/settings/b;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/settings/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/viber/voip/settings/d;->c:Lcom/viber/voip/settings/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/viber/voip/settings/d;->a:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/viber/voip/settings/d;->b:Ljava/lang/Object;

    .line 244
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/settings/d;->c:Lcom/viber/voip/settings/b;

    iget-object v1, p0, Lcom/viber/voip/settings/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/settings/d;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/viber/voip/settings/d;->c:Lcom/viber/voip/settings/b;

    iget-object v2, v2, Lcom/viber/voip/settings/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/bj;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 250
    return-void
.end method
