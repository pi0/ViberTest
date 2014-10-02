.class Lcom/viber/voip/contacts/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/a/g;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/contacts/c/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/a/b;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/voip/contacts/c/a/d;->b:Lcom/viber/voip/contacts/c/a/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/a/d;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/d;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/viber/voip/contacts/c/a/a;->b(Ljava/util/Set;)V

    .line 40
    return-void
.end method
