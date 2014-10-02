.class Lcom/viber/voip/contacts/c/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/c/a/e;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/contacts/c/c/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/c/a/b;Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/contacts/c/c/a/c;->c:Lcom/viber/voip/contacts/c/c/a/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/c/a/c;->a:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/viber/voip/contacts/c/c/a/c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/c/d;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/c/c/a/c;->a:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/c/a/c;->b:Z

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/contacts/c/c/d;->a(Ljava/util/Set;Z)V

    .line 35
    return-void
.end method
