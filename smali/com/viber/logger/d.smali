.class Lcom/viber/logger/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/logger/b;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lcom/viber/logger/b;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/logger/d;->a:Lcom/viber/logger/b;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p4, p0, Lcom/viber/logger/d;->b:Ljava/lang/CharSequence;

    .line 104
    iput-object p5, p0, Lcom/viber/logger/d;->c:Ljava/lang/CharSequence;

    .line 105
    iput-boolean p6, p0, Lcom/viber/logger/d;->d:Z

    .line 106
    iput-wide p2, p0, Lcom/viber/logger/d;->e:J

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/viber/logger/d;->d:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/viber/logger/d;->a:Lcom/viber/logger/b;

    invoke-static {v0}, Lcom/viber/logger/b;->a(Lcom/viber/logger/b;)Lcom/viber/logger/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/logger/d;->e:J

    iget-object v3, p0, Lcom/viber/logger/d;->b:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/viber/logger/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/logger/a;->b(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/viber/logger/d;->a:Lcom/viber/logger/b;

    invoke-static {v0}, Lcom/viber/logger/b;->a(Lcom/viber/logger/b;)Lcom/viber/logger/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/logger/d;->e:J

    iget-object v3, p0, Lcom/viber/logger/d;->b:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/viber/logger/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/logger/a;->a(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
