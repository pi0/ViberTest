.class Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Declaration:",
        "Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodName:Ljava/lang/String;

.field private final methodsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TDeclaration;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;


# direct methods
.method public constructor <init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDeclaration;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p2, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;-><init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->override(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->this$0:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodsTable:Ljava/util/HashMap;

    .line 97
    iput-object p2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodName:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public getCallables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TDeclaration;>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public override(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDeclaration;)V"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodsTable:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodName:Ljava/lang/String;

    iget-object v2, p1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->getSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodsTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDescriptor;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
