.class Lcom/viber/voip/widget/p;
.super Lcom/viber/voip/util/fe;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:[Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field final synthetic g:Lcom/viber/voip/widget/PhoneTypeField;


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/PhoneTypeField;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    .line 218
    invoke-direct {p0, p2}, Lcom/viber/voip/util/fe;-><init>(Landroid/content/ContentResolver;)V

    .line 208
    const/16 v0, 0x637

    iput v0, p0, Lcom/viber/voip/widget/p;->c:I

    .line 209
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/widget/p;->d:[Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "_id IN (SELECT contact_id FROM phonebookdata WHERE data2=? OR data1=? )"

    iput-object v0, p0, Lcom/viber/voip/widget/p;->e:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, "display_name ASC"

    iput-object v0, p0, Lcom/viber/voip/widget/p;->f:Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    const/16 v0, 0x637

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    const-string/jumbo v1, "display_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/widget/PhoneTypeField;->a(Lcom/viber/voip/widget/PhoneTypeField;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    const/4 v1, 0x3

    const-string/jumbo v2, "PhoneTypeField"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Query finish: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-static {v4}, Lcom/viber/voip/widget/PhoneTypeField;->a(Lcom/viber/voip/widget/PhoneTypeField;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-static {v1}, Lcom/viber/voip/widget/PhoneTypeField;->b(Lcom/viber/voip/widget/PhoneTypeField;)Lcom/viber/voip/widget/o;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-static {v1}, Lcom/viber/voip/widget/PhoneTypeField;->b(Lcom/viber/voip/widget/PhoneTypeField;)Lcom/viber/voip/widget/o;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/voip/widget/o;->a(Ljava/lang/String;)V

    .line 256
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 257
    return-void

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->a(Lcom/viber/voip/widget/PhoneTypeField;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-static {v0}, Lcom/viber/voip/widget/PhoneTypeField;->b(Lcom/viber/voip/widget/PhoneTypeField;)Lcom/viber/voip/widget/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/viber/voip/widget/p;->g:Lcom/viber/voip/widget/PhoneTypeField;

    invoke-static {v0}, Lcom/viber/voip/widget/PhoneTypeField;->b(Lcom/viber/voip/widget/PhoneTypeField;)Lcom/viber/voip/widget/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/widget/o;->a_()V

    goto :goto_0
.end method
