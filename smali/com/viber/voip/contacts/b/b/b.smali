.class public Lcom/viber/voip/contacts/b/b/b;
.super Lcom/viber/voip/messages/orm/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/a;


# annotations
.annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntity;
    authority = "com.viber.provider.vibercontacts"
    table = "blockednumbers"
    type = .enum Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
.end annotation


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;


# instance fields
.field private b:Ljava/lang/String;
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "canonized_number"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/viber/voip/messages/orm/annotation/ViberEntityField;
        projection = "blocked_date"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/viber/voip/contacts/b/b/c;

    const-class v1, Lcom/viber/voip/contacts/b/b/b;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/b/b/c;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/viber/voip/contacts/b/b/b;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/messages/orm/entity/BaseEntity;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/viber/voip/contacts/b/b/b;->c:J

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/b;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/viber/voip/contacts/b/b/b;->c:J

    return-wide v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/viber/voip/contacts/b/b/a;->a(Lcom/viber/voip/contacts/b/b/b;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lcom/viber/voip/messages/orm/creator/Creator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/viber/voip/contacts/b/b/b;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BlockedNumberEntityImpl{canonizedNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", blockedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
