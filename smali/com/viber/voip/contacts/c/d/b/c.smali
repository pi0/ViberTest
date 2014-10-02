.class Lcom/viber/voip/contacts/c/d/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/c/d/b/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/b/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/b/c;->b:Lcom/viber/voip/contacts/c/d/b/b;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/d/b/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/c;->b:Lcom/viber/voip/contacts/c/d/b/b;

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/d/b/c;->a:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/b/b;->a(Z)V

    .line 201
    return-void
.end method
